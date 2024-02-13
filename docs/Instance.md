# LeanixMtmApi::Instance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **identity_management** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_primary** | **Boolean** |  | [optional] |
| **entity_id** | **String** |  | [optional] |
| **application** | [**Application**](Application.md) |  |  |
| **resource_server_key** | **String** |  |  |
| **resource_server_secret** | **String** |  |  |
| **account** | [**Account**](Account.md) |  | [optional] |
| **identity_provider** | [**IdentityProvider**](IdentityProvider.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **prod_preferred** | **Boolean** |  | [optional] |
| **demo_preferred** | **Boolean** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |
| **third_party** | **Boolean** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Instance.new(
  id: null,
  name: null,
  url: null,
  identity_management: null,
  is_default: null,
  is_primary: null,
  entity_id: null,
  application: null,
  resource_server_key: null,
  resource_server_secret: null,
  account: null,
  identity_provider: null,
  type: null,
  prod_preferred: null,
  demo_preferred: null,
  links: null,
  third_party: null
)
```

