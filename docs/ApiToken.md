# LeanixMtmApi::ApiToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **internal** | **Boolean** |  | [optional] |
| **user_id** | **String** |  |  |
| **workspace_id** | **String** |  |  |
| **expiry** | **Time** |  |  |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **creator_id** | **String** |  |  |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::ApiToken.new(
  id: null,
  token: null,
  name: null,
  internal: null,
  user_id: null,
  workspace_id: null,
  expiry: null,
  scopes: null,
  description: null,
  creator_id: null
)
```

