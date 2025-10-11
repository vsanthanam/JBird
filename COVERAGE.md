# Code Coverage Documentation

This document describes the code coverage reporting setup for the JBird project.

## Overview

Code coverage is automatically generated and reported for all commits and pull requests using the macOS Swift 6.2 test suite. The coverage data is collected using Swift's built-in code coverage support and is visualized in two ways:

1. **GitHub Actions Summary**: A formatted table showing coverage metrics directly in the CI job output
2. **Codecov.io**: Detailed coverage reports, PR comments, and trend tracking

## Coverage Metrics

The following metrics are tracked:

- **Lines Coverage**: Percentage of executable lines that were executed during tests
- **Functions Coverage**: Percentage of functions that were called during tests
- **Regions Coverage**: Percentage of code regions that were executed during tests

## Viewing Coverage Reports

### GitHub Actions Summary

After each test run on Swift 6.2, you can view the coverage summary by:

1. Go to the "Actions" tab in the GitHub repository
2. Select a workflow run
3. Click on "Test JBird (macOS)" for Swift 6.2
4. Scroll down to view the coverage table in the summary section

The summary shows:
```
## 📊 Code Coverage Report (Swift 6.2)

| Metric | Coverage | Covered | Total |
|--------|----------|---------|-------|
| **Lines** | **XX.XX%** | XXXX | XXXX |
| **Functions** | **XX.XX%** | XXX | XXX |
| **Regions** | **XX.XX%** | XXXX | XXXX |
```

### Codecov Integration

Codecov provides additional features:

- **PR Comments**: Automatic comments on pull requests showing coverage changes
- **Coverage Trends**: Historical tracking of coverage over time
- **File-level Coverage**: Detailed line-by-line coverage for each file
- **Coverage Badge**: Optional badge for the README

Visit https://codecov.io/gh/vsanthanam/JBird to view detailed reports.

## Running Coverage Locally

To generate coverage reports locally:

```bash
# Run tests with coverage enabled
swift test --enable-code-coverage

# View the coverage JSON path
swift test --show-codecov-path

# The coverage data is stored at:
# .build/<platform>/debug/codecov/JBird.json
```

You can then examine the JSON file to see detailed coverage information.

## Coverage Configuration

### CI Configuration

Code coverage is enabled in `.github/workflows/ci.yml`:

```yaml
- name: Test JBird
  run: swift test --enable-code-coverage  # Only for Swift 6.2
```

### Codecov Configuration

The Codecov token is stored as a repository secret (`CODECOV_TOKEN`). For public repositories, this token is optional but recommended for better reliability and rate limits.

To configure the token:
1. Sign up at https://codecov.io
2. Add the repository
3. Copy the upload token
4. Add it as `CODECOV_TOKEN` in repository secrets

## Future Enhancements

The coverage system supports several potential enhancements:

- **Coverage Thresholds**: Set minimum coverage percentages to fail CI
- **HTML Reports**: Generate browsable HTML coverage reports
- **Coverage Badges**: Add coverage badges to README
- **Differential Coverage**: Show coverage only for changed files

## Troubleshooting

### Coverage data not generated

Ensure you're running tests with `--enable-code-coverage`:
```bash
swift test --enable-code-coverage
```

### Codecov upload fails

- Verify `CODECOV_TOKEN` secret is set (if using private repo)
- Check the codecov action logs for specific errors
- Note: `fail_ci_if_error: false` prevents CI failure on upload errors

### Coverage appears low

- Coverage is only collected from executed test code
- Some generated code (like resource accessors) may not be covered
- Consider adding tests for uncovered code paths
