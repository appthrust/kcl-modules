# Contributing to KCL Modules

Thank you for your interest in contributing to our KCL Modules! This document provides guidelines and instructions for contributing.

## Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How to Contribute

### Reporting Bugs

1. Check if the bug has already been reported in our [Issues](https://github.com/appthrust/kcl-modules/issues)
2. If not, create a new issue using the bug report template
3. Include as much detail as possible:
   - Which module you're using
   - What you expected to happen
   - What actually happened
   - Steps to reproduce
   - Code examples

### Suggesting Enhancements

1. Check if the enhancement has already been suggested in our [Issues](https://github.com/appthrust/kcl-modules/issues)
2. If not, create a new issue using the feature request template
3. Describe your use case and why this enhancement would be useful

### Pull Requests

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes
4. Add or update tests as needed
5. Update documentation if needed
6. Submit a pull request using our pull request template

## Development Setup

1. Install KCL
2. Clone the repository
3. Install dependencies:
   ```bash
   nix develop
   ```

## Adding a New Module

1. Create a new directory for your module
2. Include:
   - README.md with documentation
   - kcl.mod file
   - Source code files
   - Test files
3. Update the top-level README.md to include your module

## Testing

- Write tests for any new functionality
- Run tests using:
  ```bash
  kcl test ./...
  ```

## Documentation

- Keep READMEs up to date
- Document all public functions and types
- Include examples in documentation
- Update the changelog when making changes

## Questions?

Feel free to create an issue for any questions about contributing.

Thank you for contributing to KCL Modules!
