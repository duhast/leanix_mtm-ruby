# LeanixMtmApi::DomainDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **fqdn** | **String** |  | [optional] |
| **identity_provider** | [**IdentityProvider**](IdentityProvider.md) |  | [optional] |
| **exclusive_idp** | **Boolean** |  | [optional] |
| **workspaces** | [**Array&lt;Workspace&gt;**](Workspace.md) |  | [optional] |
| **custom_certificate** | [**CustomCertificate**](CustomCertificate.md) |  | [optional] |
| **instance_fqdn** | **String** |  |  |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::DomainDTO.new(
  id: null,
  fqdn: null,
  identity_provider: null,
  exclusive_idp: null,
  workspaces: null,
  custom_certificate: null,
  instance_fqdn: null
)
```

