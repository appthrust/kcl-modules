# filepath

A KCL package that helps you work with file paths. It provides functions to handle file paths in a safe and consistent way.

## Installation

To install this package, run the following command:

```bash
kcl mod add oci://ghcr.io/appthrust/kcl/filepath
```

## Usage

### dir()

The `dir()` function returns the directory name of a path, similar to Python's `os.path.dirname()`.

```python kcl
import filepath

# Basic usage
dir = filepath.dir("/home/user/file.txt")  # Returns "/home/user"
```
