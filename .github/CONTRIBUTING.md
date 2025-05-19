# Contributing to JBird

Thank you for your interest in contributing to JBird! This document outlines the process for contributing to the project and the standards that all contributions must meet.

## Core Principles

JBird is built on these foundational principles:

1. **Performance**: JBird is a high-performance JSON library with a C11 core. Performance is a critical feature.
2. **Swift-First API**: While the core is in C, the public APIs are designed to feel natural and idiomatic in Swift.
3. **Type Safety**: All APIs enforce proper type checking and provide clear error handling.
4. **Complete Test Coverage**: All code must be thoroughly tested to ensure strict compliance with the JSON RFC 8259 specification.

## Performance Requirements

**Performance is non-negotiable.** All contributions must maintain or improve the current performance characteristics:

- Contributions that reduce performance will only be accepted if they fix a critical bug or security vulnerability.
- Performance-sensitive changes must include benchmark results showing the impact.
- The benchmark suite in the `/Benchmarks` directory should be used to validate changes.
- Memory efficiency is equally important - contributions should not significantly increase memory usage.

## API Design Guidelines

When contributing to JBird's Swift APIs:

- Follow [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/).
- APIs should feel "Swifty" and natural to Swift developers.
- Use Swift's type system to prevent runtime errors.
- Provide clear, descriptive error messages.
- Design for both clarity and brevity.
- Consider naming carefully - names should be self-documenting.
- Follow existing patterns in the codebase.

## Documentation Requirements

All public APIs must be documented:

- Use DocC comment syntax for all public declarations.
- Include usage examples in documentation.
- Document parameter requirements and return values.
- Explain error conditions and edge cases.
- Keep documentation up-to-date when changing APIs.
- Documentation should be clear and concise.

## Testing Requirements

JBird maintains 100% test coverage for its codebase:

- All new code must include tests.
- Tests should cover both success and failure cases.
- Performance-sensitive code should include performance tests.
- Bug fixes must include regression tests.
- All tests must pass before submitting a pull request.

## Pull Request Process

1. **Fork the Repository**: Create your own fork of the repository.
2. **Create a Branch**: Create a branch with a descriptive name for your change.
3. **Implement Changes**: Make your changes, following the guidelines above.
4. **Write Tests**: Add tests to cover your changes.
5. **Document**: Add documentation for new functionality.
6. **Run Benchmarks**: For performance-sensitive changes, run benchmarks.
7. **Submit PR**: Submit a pull request with a clear description of the changes.

## Code Style

- Use SwiftFormat for formatting Swift code (config in `.swiftformat`).
- Maintain C11 compliance for the parser core.
- Use `StrictConcurrency=complete` for all Swift code.

## Legal Requirements

- All contributors must agree to the project's MIT license.
- Do not submit code that violates any patents or other intellectual property.
- By submitting code, you agree to license your contributions under the same license as the project.

## Getting Help

If you have questions about contributing, please open an issue on GitHub or reach out to the maintainers directly.

Thank you for helping to make JBird better!
