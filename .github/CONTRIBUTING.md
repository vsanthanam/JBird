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

- Formatters are managed with [mise](https://mise.jdx.dev). Run `$ mise install` once to get the pinned versions of SwiftFormat and clang-format.
- Format everything with `$ mise run fmt`, or check without modifying files with `$ mise run lint`. Use `fmt:swift`, `fmt:c`, `lint:swift`, or `lint:c` to run a single formatter.
- Maintain C11 compliance for the parser core.
- Internal facing APIs should be self-documenting, and should rarely use documentation unless it's absolutely necessary.
- Similarly, code comments are usually not helpful. You should add them only when the decision you're making is not obvious or requires extra justification.

## AI Policy

You are welcome to use AI tools (Claude, Copilot, Cursor, ChatGPT, etc.) to help you contribute to JBird. Using them is not a problem. Submitting their output without reading, understanding, and editing it is.

**You are the author.** Every line in your pull request is yours, regardless of what wrote it:

- You must understand every change well enough to explain and defend it in review. "The AI did it" is not an acceptable answer to a review question.
- Review comments must be answered by you. Do not paste maintainer questions into a tool and paste the response back.
- Do not submit code you have not run, tests you have not seen pass, or benchmark results you did not produce.

**AI slop is not accepted.** Before submitting, go through the list above and strip out everything that matches. Your PR description should describe *why* the change is needed and *how* you verified it, not what the diff contains.

**Keep the scope tight.** Keep pull requests focused on one change. A small, clean PR will be reviewed and merged far faster than a large one that requires the reviewer to separate the signal from the noise.

**Enforcement.** Pull requests that clearly contain AI slop will be closed without a detailed review. You are welcome to clean them up and resubmit. Repeated submissions of this kind may result in being blocked from making contributions. Maintainer time is the scarcest resource this project has, and it should not be spent editing output the contributor did not bother to edit themselves.

### What is AI slop?

"AI slop" is code, documentation, or prose that an AI tool produced and a human did not meaningfully review or edit. AI slop may include, but is not limited to the following: 

- Comments that narrate what the code obviously does (`// Increment the counter`, `// Return the result`).
- Public API style documentation comments on internal, private, or fileprivate declarations.
- Documentation on public APIs that restate the signature instead of explaining behavior, requirements, or edge cases.
- Defensive checks, fallbacks, and error handling for conditions that cannot occur.
- Unnecessary abstractions, helper functions, protocols, or configuration options that aren't actually in use.
- Reformatting, renaming, or "cleanup" of code unrelated to the change.
- Tests that exercise nothing meaningful, duplicate existing coverage, or exist only to inflate the test count.
- Pull request descriptions that restate the diff, list every file touched, or contain generic filler.
- Emoji, marketing language, and summaries of how thorough or robust the change is.
- Review replies that are clearly generated rather than written, and that answer a question the reviewer did not ask.

None of these are unique to AI. Humans write all of them too, and the [Code Style](#code-style) and [Documentation Requirements](#documentation-requirements) sections already prohibit most of them. The difference is that AI tools produce them by default and in bulk, so if you use one, expect to spend real effort removing them.

## Legal Requirements

- All contributors must agree to the project's MIT license.
- Do not submit code that violates any patents or other intellectual property.
- By submitting code, you agree to license your contributions under the same license as the project.

## Getting Help

If you have questions about contributing, please open an issue on GitHub or reach out to the maintainers directly.

Thank you for helping to make JBird better!
