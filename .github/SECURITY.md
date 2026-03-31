# Security Policy

## Supported Versions

Only the latest release of JBird receives security fixes. There are no long-term support branches. Users should always update to the most recent version.

## Reporting a Vulnerability

JBird handles JSON parsing, which often involves processing untrusted input. Security vulnerabilities are treated with high priority.

**Preferred:** Report vulnerabilities through [GitHub Security Advisories](https://github.com/vsanthanam/JBird/security/advisories/new). This provides a private channel for disclosure and allows coordinated fixes before public announcement.

**Alternatively:** Email [talkto@vsanthanam.com](mailto:talkto@vsanthanam.com) with "JBird Security Vulnerability" in the subject line.

**Do not report security vulnerabilities through public issues or pull requests.**

When reporting, please include:

- A description of the vulnerability and its potential impact
- Steps to reproduce the issue
- Any suggested fixes, if applicable

## Response Process

1. The maintainer will acknowledge receipt of the report.
2. An initial assessment will confirm the vulnerability and determine its severity.
3. A fix will be developed and released as a new version as quickly as possible.
4. The reporter will be credited in the release notes unless they request anonymity.

## Security Architecture

### Design Principles

JBird's C11 core parser is built with the following security principles:

- **Memory safety**: Careful manual memory management to prevent buffer overflows, use-after-free, and other memory corruption vulnerabilities.
- **Strict RFC compliance**: The parser strictly follows [RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259), rejecting any payload that does not conform. JBird prefers correctness over permissiveness and does not attempt to self-heal malformed input.
- **Explicit error handling**: Malformed JSON is always rejected with clear, actionable error information. Errors are never silently ignored.

### Automated Tooling

JBird uses several layers of automated security analysis:

- **CodeQL**: Static analysis for C/C++, Swift, and GitHub Actions runs on every push to `main` and on a weekly schedule via [GitHub Code Scanning](https://github.com/vsanthanam/JBird/security/code-scanning).
- **Clang static analyzer**: The C parser core is analyzed on every pull request as part of CI.
- **Fuzz testing**: An [AFL++](https://aflplus.plus/) fuzzing harness with AddressSanitizer and UndefinedBehaviorSanitizer support is available in the [`Fuzzer`](https://github.com/vsanthanam/JBird/tree/main/Fuzzer) directory for testing the parser against adversarial inputs.

## Acknowledgements

Security researchers who responsibly disclose vulnerabilities will be acknowledged in release notes with their permission.
