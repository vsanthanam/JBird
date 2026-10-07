#!/bin/bash
# Throwaway probe: compile the standalone Mutex probe for every installed simulator runtime and run it.
set -uo pipefail
LABEL="$1"
xcrun simctl list runtimes
xcrun simctl list runtimes -j > /tmp/runtimes.json
python3 - <<'PY' > /tmp/runtimes.txt
import json
for r in json.load(open('/tmp/runtimes.json'))['runtimes']:
    if not r.get('isAvailable'): continue
    plat = r.get('platform') or r['name'].split()[0]
    dts = r.get('supportedDeviceTypes') or []
    if not dts: continue
    print(plat, r['version'], r['identifier'], dts[0]['identifier'])
PY
cat /tmp/runtimes.txt
while read -r plat ver rid dt; do
  case "$plat" in
    iOS) sdk=iphonesimulator; triple="arm64-apple-ios16.0-simulator" ;;
    tvOS) sdk=appletvsimulator; triple="arm64-apple-tvos16.0-simulator" ;;
    watchOS) sdk=watchsimulator; triple="arm64-apple-watchos9.0-simulator" ;;
    visionOS|xrOS) sdk=xrsimulator; triple="arm64-apple-xros1.0-simulator" ;;
    *) continue ;;
  esac
  for opt in -Onone -O; do
    out="/tmp/probe-$plat-$ver$opt"
    xcrun --sdk $sdk swiftc $opt -target $triple -sdk "$(xcrun --sdk $sdk --show-sdk-path)" Probes/MutexProbe.swift Probes/main.swift -o "$out" || { echo "RESULT [$LABEL | $plat $ver | $opt] COMPILE FAILED"; continue; }
  done
  udid=$(xcrun simctl create "probe-$plat-$ver" "$dt" "$rid") || { echo "RESULT [$LABEL | $plat $ver] CREATE FAILED"; continue; }
  xcrun simctl boot "$udid" && xcrun simctl bootstatus "$udid" -b >/dev/null
  for opt in -Onone -O; do
    xcrun simctl spawn "$udid" "/tmp/probe-$plat-$ver$opt" 2>&1 | grep '^PROBE' | sed "s/^PROBE /RESULT [$LABEL | $plat $ver | standalone $opt] /" \
      || echo "RESULT [$LABEL | $plat $ver | $opt] SPAWN FAILED"
  done
  xcrun simctl shutdown "$udid"; xcrun simctl delete "$udid"
done < /tmp/runtimes.txt
