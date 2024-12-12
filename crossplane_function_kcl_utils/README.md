# crossplane_function_kcl_utils

A KCL package that provides schemas and utility functions for writing safer and more productive Crossplane Functions in KCL. This module enhances type safety and IDE support when working with function-kcl.

## Installation

To install this package, run the following command:

```bash
kcl mod add oci://ghcr.io/appthrust/kcl/crossplane_function_kcl_utils
```

## Usage

### get_params()

The `get_params()` function provides type-safe access to the function pipeline's parameters. While `option("params")` returns `any` type, this function returns a strongly-typed `Params` schema.

```python kcl
import crossplane_function_kcl_utils as utils

# Get type-safe params
params = utils.get_params()

# Access params with IDE support
print(params.oxr)        # Observed composite resource
print(params.ocds)       # Observed composed resources
print(params.dxr)        # Desired composite resource
print(params.dcds)       # Desired composed resources
print(params.ctx)        # Pipeline context
print(params.extraResources)  # Extra resources
```

### Params Schema

The `Params` schema provides a type-safe structure for function pipeline parameters:

```python kcl
schema Params:
    """
    Params are the input parameters for the function pipeline.
    """
    oxr: Resource           # Observed composite resource (XR)
    ocds: {str:Composite}   # Observed composed resources
    dxr: Resource          # Desired composite resource (XR)
    dcds: {str:Composite}   # Desired composed resources
    ctx: any               # Function pipeline's context
    extraResources: {str:[Composite]}  # Extra resources
```

Note: A composed resource can be a managed resource, ProviderConfig, composite resource, or any other Crossplane resource.
