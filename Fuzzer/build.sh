#!/bin/bash
# Build script for AFL++ fuzzing of JBirdParser

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Check for AFL++ compiler
if command -v afl-clang-fast &> /dev/null; then
    CC="afl-clang-fast"
elif command -v afl-clang-lto &> /dev/null; then
    CC="afl-clang-lto"
elif command -v afl-gcc &> /dev/null; then
    CC="afl-gcc"
else
    echo "Error: AFL++ not found. Please install it first:"
    echo "  brew install afl++  (macOS)"
    echo "  apt install afl++   (Linux)"
    exit 1
fi

echo "Using compiler: $CC"

# Build with sanitizers for better bug detection
CFLAGS="-g -O2 -I../Sources/JBirdParser/include"

# Add sanitizers if supported
if [[ "$CC" == "afl-clang-fast" ]] || [[ "$CC" == "afl-clang-lto" ]]; then
    CFLAGS="$CFLAGS -fsanitize=address,undefined -fno-omit-frame-pointer"
fi

echo "Building fuzz_harness..."
$CC $CFLAGS \
    -o fuzz_harness \
    fuzz_harness.c \
    ../Sources/JBirdParser/JBirdParser.c

echo "Build complete!"
echo ""
echo "To start fuzzing:"
echo "  mkdir -p findings"
echo "  afl-fuzz -i corpus -o findings -m none -- ./fuzz_harness"

