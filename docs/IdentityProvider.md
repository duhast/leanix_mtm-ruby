# LeanixMtmApi::IdentityProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **user_name_domain** | **String** |  | [optional] |
| **account** | [**Account**](Account.md) |  | [optional] |
| **identity_management** | **String** |  |  |
| **entity_id** | **String** |  | [optional] |
| **metadata** | **String** |  | [optional] |
| **certificate_expiry_date** | **Time** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::IdentityProvider.new(
  id: null,
  name: null,
  user_name_domain: null,
  account: null,
  identity_management: null,
  entity_id: null,
  metadata: null,
  certificate_expiry_date: null
)
```

