#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if command -v afl-clang-fast &> /dev/null; then
    CC="afl-clang-fast"
elif command -v afl-clang-lto &> /dev/null; then
    CC="afl-clang-lto"
elif command -v afl-gcc &> /dev/null; then
    CC="afl-gcc"
else
    echo "Error: AFL++ not found. Please install it first:"
fi


CFLAGS="-g -O2 -I../Sources/JBirdParser/include"

if [[ "$CC" == "afl-clang-fast" ]] || [[ "$CC" == "afl-clang-lto" ]]; then
    CFLAGS="$CFLAGS -fsanitize=address,undefined -fno-omit-frame-pointer"
fi

$CC $CFLAGS \
    -o fuzz_harness \
    fuzz_harness.c \
    ../Sources/JBirdParser/JBirdParser.c

echo "✅ Build complete!"
