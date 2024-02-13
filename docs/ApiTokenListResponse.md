# LeanixMtmApi::ApiTokenListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | [**Array&lt;ApiError&gt;**](ApiError.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **data** | [**Array&lt;ApiToken&gt;**](ApiToken.md) |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::ApiTokenListResponse.new(
  status: null,
  type: null,
  message: null,
  errors: null,
  total: null,
  data: null
)
```

