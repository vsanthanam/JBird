# Fuzzing Support

For complex changes, espectially to `JBirdParser`, it is a good idea to run the library against a [software fuzzer](https://en.wikipedia.org/wiki/American_Fuzzy_Lop_(software))

To fascilitate this process, the repository includes a testing harness to run the `JBirdParser` against [AFL++](https://aflplus.plus/).

## Setup

### Install AFL++

For macOS

```bash
$ brew install afl++
```

```bash
$ sudo apt-get install afl++
```

See the [AFL++ website](https://aflplus.plus/) for more information.

### Building the Harness

Compile the harness from this directory (`Fuzzer/`) with LLVM:

```bash
$ afl-clang-fast -g -O2 -fsanitize=address,undefined \
    -I../Sources/JBirdParser/include \
    -o fuzz_harness \
    fuzz_harness.c \
    ../Sources/JBirdParser/JBirdParser.c
```

LLVM is strongly suggested, but you can use GCC or another supported compiler if LLVM is not available. See [the AFL++ documentation](https://aflplus.plus/docs/) for more information.

You can customize the build using the following flags:

- `-g`: Include debug symbols for better crash analysis
- `-O2`: Optimization (use `-O0` for easier debugging)
- `-fsanitize=address,undefined`: Enable AddressSanitizer and UBSan for detecting memory errors
- `afl-clang-fast`: AFL++'s LLVM-based compiler wrapper with enhanced instrumentation.
- `-DACCESSOR_ITERATION_LIMIT=N`: Limit how many array/object elements are accessed per parse (default: 100)

## Running the Fuzzer

On macOS, you will most likely need to perform additional setup steps before you can run the `afl-fuzz` command:

First, you will need to disable crash reporting:

```bash
$ SL=/System/Library; PL=com.apple.ReportCrash
$ launchctl unload -w ${SL}/LaunchAgents/${PL}.plist
$ sudo launchctl unload -w ${SL}/LaunchDaemons/${PL}.Root.plist
```

> ⚠️ This is a persistent change that you should almost certainly undo after you finish testing. You can undo it with the following commands:

```bash
$ launchctl load -w /System/Library/LaunchAgents/com.apple.ReportCrash.plist
$ sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist
```

For Apple Silicon users, you will most likely need to increase shared memory limits, especially if you want to use [ASan](https://github.com/google/sanitizers/wiki/AddressSanitizer). You can set up suggested AFL++ limits using `afl-system-config`, which is also installed with you install `afl++`.

```bash
$ sudo afl-system-config
```

This change is not persistent will undo itself when you reboot your machine.

For macOS users without Apple Silicon, go sell your machine and buy something with Apple Silicon in it. You will not reget this decision.

Next, create a directory to store your findings inside this directory (`/Fuzzer`).

```bash
$ mkdir -p findings
```

Finally, run the fuzzer using the harness:

```bash
$ afl-fuzz -i corpus -o findings \
    -m none \              # No memory limit (needed for ASan)
    -t 1000 \              # 1 second timeout per test
    -- ./fuzz_harness
```

You can run multiple fuzzer instances for faster code coverage, at the expense of memory use:

```bash
# Terminal 1 - Main fuzzer
$ afl-fuzz -i corpus -o findings -M main -- ./fuzz_harness

# Terminal 2..N - Secondary fuzzers
$ afl-fuzz -i corpus -o findings -S secondary1 -- ./fuzz_harness
$ afl-fuzz -i corpus -o findings -S secondary2 -- ./fuzz_harness
```

## Understanding Results

AFL++ creates several directories in `findings/` to help you understand the results of your testing:

- `crashes/` - Inputs that caused crashes
- `hangs/` - Inputs that caused timeouts
- `queue/` - All interesting test cases discovered

The AFL++ TUI also has a bunch of useful information about how many and what kinds of issues it has discovered while it is running. You should monitor this interface while testing.

### Analyzing Crashes

To reproduce a crash get the identifier from the `/crashes` directory (or the AFL++ TUI)

```bash
$ ./fuzz_harness < findings/crashes/id:000000,sig:11,...
```

If you need `ASan` information to help you debug the crash, you can enable it before you run the same command:

```bash
$ ASAN_OPTIONS=symbolize=1 ./fuzz_harness < findings/crashes/id:000000,sig:11,...
```

To minimize a test case while preserving its behavior:

```bash
$ afl-tmin -i findings/crashes/id:000000,sig:11,... -o minimized.json -- ./fuzz_harness
```

### Getting Coverage Analysis

You can use `llvm-cov` to deterministically ensure that your fuzzing has covered the codepaths you are interested in testing.  

```bash
# Build with coverage instrumentation
afl-clang-fast -g -O2 --coverage \
    -I../Sources/JBirdParser/include \
    -o fuzz_cov \
    fuzz_harness.c \
    ../Sources/JBirdParser/JBirdParser.c

# Run corpus through instrumented binary
for f in findings/queue/*; do
    ./fuzz_cov < "$f"
done

# Generate coverage report
llvm-cov gcov *.gcda
```

## Keyword Dictionaries

By default, AFL++ uses random mutations (bit flips, byte swaps, etc.) which are "dumb" - they don't understand JSON syntax. The fuzzer might spend a lot of time generating invalid inputs like "tru3" or fAlse" instead of valid tokens. Depending on what you are trying to test, his default behavior might not actually be useful. To speed things up and get more targeted results, you can create a keyword dictionary for smarter, more relevent test cases that you are likely to encounter in production.

First, copy the provided example dictionary:

```bash
$ cp json.dict.example json.dict
```

Then, run the fuzzer with the dictionary input:

```bash
$ afl-fuzz -i corpus -o findings -x json.dict -- ./fuzz_harness
```

You can customize `json.dict` to target specific JSON token scenarious you want to validate. This way, you can tailor your fuzzing based on what kind of issues you're trying to find (e.g. bugs, malicious payloads, etc.)

## Tips for Effective Fuzzing

1. **Run for extended periods** - Good fuzzing needs to betakes hours or even days, not minutes. Its not useful if its not thorough.
2. **Use multiple cores** - Parallel fuzzing dramatically improves coverage. Deterministic coverage reports are the only way you know you've tested everything.
3. **Enable sanitizers** - ASan and other supported sanitizers can catch issues AFL alone might miss. See [the AFL++ documentation](https://aflplus.plus/docs/) for more information.

## Reporting Issues

This tool exists primarily to help contributors validate the safety of their own changes, but if you find any issues on main, feel free to file issues or submit pull requests to correct them. See the [contribution guidelines](https://github.com/vsanthanam/JBird?tab=contributing-ov-file) for more information.

The exception to this is security-related issues — report those privately instead. See [the security policy](https://github.com/vsanthanam/JBird?tab=security-ov-file) for more information.
