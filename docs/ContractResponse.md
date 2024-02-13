# LeanixMtmApi::ContractResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | [**Array&lt;ApiError&gt;**](ApiError.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **data** | [**Contract**](Contract.md) |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::ContractResponse.new(
  status: null,
  type: null,
  message: null,
  errors: null,
  total: null,
  data: null
)
```

