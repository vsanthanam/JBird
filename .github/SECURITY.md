# Security Policy

## Supported Versions

JBird is currently in active development, and security updates are applied only to the most recent version:

| Version | Supported          |
| ------- | ------------------ |
| Latest  | :white_check_mark: |
| Older   | :x:                |

As JBird is maintained by a single developer, only the most recent version receives security fixes. Users are strongly encouraged to always update to the latest version when available.

## Reporting a Vulnerability

The security of JBird is taken seriously. As a library handling JSON parsing (which often involves processing untrusted data), security vulnerabilities are treated with high priority.

### How to Report

If you discover a security vulnerability in JBird, please report it by:

1. **Email**: Send details of the vulnerability to [vsanthanam@vsanthanam.com](mailto:vsanthanam@vsanthanam.com) with "JBird Security Vulnerability" in the subject line.

2. **Do not report vulnerabilities in public issues**: Please do not disclose the vulnerability in the public issue tracker, as this could put users at risk.

### What to Include

When reporting a vulnerability, please include:

- A clear description of the vulnerability
- Steps to reproduce the issue
- Potential impact of the vulnerability
- Any potential solutions you may have identified

### Response Process

After receiving a security vulnerability report:

1. The maintainer will acknowledge receipt of the report within 48 hours.
2. An initial assessment will be conducted to confirm the vulnerability and determine its severity.
3. The maintainer will work on a fix and aim to release a patch as quickly as possible, depending on the complexity of the issue.
4. Once a fix is ready, it will be released as a new version, and credit will be given to the reporter (unless anonymity is requested).

## Security Considerations for Users

As JBird is a library for parsing JSON (which may come from untrusted sources), users should be aware of the following:

1. **Input Validation**: Always validate JSON input before passing it to JBird, especially if it comes from external sources.

2. **Memory Usage**: Be aware that parsing very large JSON documents can consume significant memory. Consider implementing size limits for JSON input in your application.

3. **Keep Updated**: Always use the latest version of JBird to benefit from security improvements and bug fixes.

4. **Reporting Issues**: If you encounter any behavior that might indicate a security vulnerability, please report it according to the process outlined above.

## Security Design Principles

JBird is designed with the following security principles in mind:

1. **Memory Safety**: The C core implementation uses careful memory management to prevent buffer overflows and other memory-related vulnerabilities.

2. **RFC Compliance**: JBird aims to strictly follow the JSON RFC 8259 specification, rejecting invalid JSON that might be used in attacks.

3. **Error Handling**: Robust error handling is implemented to ensure that malformed JSON is rejected and doesn't lead to undefined behavior.

4. **Type Safety**: The Swift API is designed to be type-safe, helping to prevent misuse.

## Acknowledgements

Security researchers who responsibly disclose vulnerabilities will be acknowledged (with permission) for their contributions to improving the security of JBird.

---

This security policy may be updated as the project evolves.
