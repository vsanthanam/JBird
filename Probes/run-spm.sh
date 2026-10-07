#!/bin/bash
# Throwaway probe runner for issue #467. Usage: Probes/run-spm.sh <label> [extra swift test flags...]
set -uo pipefail
LABEL="$1"; shift
FILE=Sources/JBirdCodableSupport/CompatibilityMutex.swift
cp "$FILE" /tmp/CompatibilityMutex.orig.swift 2>/dev/null || cp "$FILE" "${RUNNER_TEMP:-.}/CompatibilityMutex.orig.swift"
status=0
run() {
  local variant="$1" config="$2"; shift 2
  local log="probe-$variant-$config.log"
  if [ -n "${PROBE_PREBUILD:-}" ]; then
    swift build -c "$config" --build-tests "$@" > "$log.build" 2>&1 || { echo "RESULT [$LABEL | $variant | $config] BUILD FAILED"; tail -40 "$log.build"; status=1; return; }
    local filter=(--filter ZZLeakProbe); [ -n "${PROBE_NOFILTER:-}" ] && filter=()
    swift test -c "$config" --skip-build "${filter[@]}" "$@" > "$log" 2>&1
  else
    swift test -c "$config" --filter ZZLeakProbe "$@" > "$log" 2>&1
  fi
  local rc=$?
  if grep -q '^PROBE' "$log"; then
    grep '^PROBE' "$log" | sed "s/^PROBE /RESULT [$LABEL | $variant | $config] /"
  else
    echo "RESULT [$LABEL | $variant | $config] NO PROBE OUTPUT (rc=$rc)"; tail -60 "$log"; status=1
  fi
}
for config in debug release; do run original "$config" "$@"; done
perl -0pi -e 's/(Mutex<Value>\.self\)\r?\n(\s*))pointer\.deinitialize\(count: 1\)/$1_ = pointer.move()/' "$FILE"
grep -q '_ = pointer.move()' "$FILE" || { echo "patch failed"; exit 1; }
git --no-pager diff -- "$FILE"
for config in debug release; do run fixed "$config" "$@"; done
exit $status
