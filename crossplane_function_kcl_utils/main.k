"""
This module provides schemas and utility functions for writing safer and more productive Crossplane Functions in KCL.
"""
type Resource = any

schema Composite:
    """A composed resource in Crossplane."""
    Resource: Resource

schema Params:
    """
    Params are the input parameters for the function pipeline.

    Attributes
    ----------
    oxr : Resource, default is None
        Observed composite resource (XR).
    ocds : {str:Composite}, default is None
        Key-value of the observed state of a composed resource. The key is the name of the composed resource.
        Note: A composed resource is not just a managed resource - it can also be a ProviderConfig, another composite resource, or any other Crossplane resource.
    dxr : Resource, default is None
        Desired composite resource (XR).
    dcds : {str:Composite}, default is None
        Key-value of the desired state of a composed resource. The key is the name of the composed resource.
        Note: A composed resource is not just a managed resource - it can also be a ProviderConfig, another composite resource, or any other Crossplane resource.
    ctx : any, default is None
        Function pipeline's context
    extraResources : {str:[Composite]}, default is None
        Extra resources. The key is the name of the resource and the value is a list of resources.

    Examples
    --------
    params = get_params()
    print(params.oxr)
    print(params.ocds)
    print(params.dxr)
    print(params.dcds)
    print(params.ctx)
    print(params.extraResources)
    """
    oxr: Resource
    ocds: {str:Composite}
    dxr: Resource
    dcds: {str:Composite}
    ctx: any
    extraResources: {str:[Composite]}

get_params = lambda -> Params {
    """
    Get type-safe access to the function pipeline's parameters.
    
    Returns
    -------
    Params
        A strongly-typed Params schema containing the function pipeline's parameters.
    
    Examples
    --------
    params = get_params()
    xr = params.oxr  # Type-safe access to observed XR
    """
    params = option("params")
    Params {
        oxr = params.oxr
        ocds = params.ocds
        dxr = params.dxr
        dcds = params.dcds
        ctx = params.ctx
        extraResources = params.extraResources
    }
}
