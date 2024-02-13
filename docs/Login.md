# LeanixMtmApi::Login

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_name** | **String** |  | [optional] |
| **role** | **String** |  | [optional] |
| **customer_roles** | **Array&lt;String&gt;** |  | [optional] |
| **access_control_entities** | **Array&lt;String&gt;** |  | [optional] |
| **blacklist** | **Boolean** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **idp_entity_id** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **user** | [**User**](User.md) |  |  |
| **workspace** | [**Workspace**](Workspace.md) |  | [optional] |
| **permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] |
| **access_token** | [**AccessTokenResponse**](AccessTokenResponse.md) |  | [optional] |
| **user_agent** | **String** |  | [optional] |
| **transient_user** | **Boolean** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Login.new(
  workspace_name: null,
  role: null,
  customer_roles: null,
  access_control_entities: null,
  blacklist: null,
  ip_address: null,
  idp_entity_id: null,
  timestamp: null,
  user: null,
  workspace: null,
  permissions: null,
  access_token: null,
  user_agent: null,
  transient_user: null
)
```

