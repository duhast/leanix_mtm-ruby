# LeanixMtmApi::TechnicalUserData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** |  |  |
| **email** | **String** |  | [optional] |
| **permission_role** | **String** |  |  |
| **customer_roles** | **String** |  | [optional] |
| **access_control_entities** | **String** |  | [optional] |
| **api_token_data** | [**ApiTokenData**](ApiTokenData.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **workspace_id** | **String** |  |  |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::TechnicalUserData.new(
  user_name: null,
  email: null,
  permission_role: null,
  customer_roles: null,
  access_control_entities: null,
  api_token_data: null,
  id: null,
  account_id: null,
  workspace_id: null
)
```

