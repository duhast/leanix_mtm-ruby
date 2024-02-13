# LeanixMtmApi::TechnicalUserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | [**Array&lt;ApiError&gt;**](ApiError.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **data** | [**TechnicalUserData**](TechnicalUserData.md) |  | [optional] |
| **workspace_instance_url** | **String** |  | [optional] |
| **workspace_name** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::TechnicalUserResponse.new(
  status: null,
  type: null,
  message: null,
  errors: null,
  total: null,
  data: null,
  workspace_instance_url: null,
  workspace_name: null
)
```

