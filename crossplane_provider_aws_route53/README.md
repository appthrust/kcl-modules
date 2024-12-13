# crossplane_provider_aws_route53

A KCL package that provides schemas for AWS Route53 resources managed by the Crossplane AWS Provider. This module enhances type safety and IDE support when working with Route53 resources in your Crossplane configurations.

## Installation

To install this package, run the following command:

```bash
kcl mod add oci://ghcr.io/appthrust/kcl/crossplane_provider_aws_route53
```

## Usage

This module provides schemas for various Route53 resources including:

### v1beta1
- DelegationSet
- HealthCheck
- HostedZoneDNSSEC
- Record
- ResolverConfig
- TrafficPolicy
- TrafficPolicyInstance
- VPCAssociationAuthorization
- Zone
- ZoneAssociation

### v1beta2
- Record

Example usage:

```python kcl
import crossplane_provider_aws_route53.v1beta2.route53_aws_upbound_io_v1beta2_record as record

# Create a Route53 record with type safety
my_record = record.Record {
    metadata.name = "example-record"
    spec = {
        forProvider = {
            name = "example.com"
            type = "A"
            ttl = 300
            records = ["192.0.2.1"]
            zoneId = "Z1234567890"
        }
    }
}
```

Each schema provides type-safe access to the resource's fields, improving reliability and development experience through better IDE support and compile-time type checking.
