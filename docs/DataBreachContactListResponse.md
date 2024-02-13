# LeanixMtmApi::DataBreachContactListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | [**Array&lt;ApiError&gt;**](ApiError.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **data** | [**Array&lt;DataBreachContact&gt;**](DataBreachContact.md) |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::DataBreachContactListResponse.new(
  status: null,
  type: null,
  message: null,
  errors: null,
  total: null,
  data: null
)
```

