# LeanixMtmApi::Domain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **fqdn** | **String** |  | [optional] |
| **identity_provider** | [**IdentityProvider**](IdentityProvider.md) |  |  |
| **exclusive_idp** | **Boolean** |  | [optional] |
| **custom_certificate** | [**CustomCertificate**](CustomCertificate.md) |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Domain.new(
  id: null,
  fqdn: null,
  identity_provider: null,
  exclusive_idp: null,
  custom_certificate: null
)
```

