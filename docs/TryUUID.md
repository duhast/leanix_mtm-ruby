# LeanixMtmApi::TryUUID

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failure** | **Boolean** |  | [optional] |
| **cause** | [**Throwable**](Throwable.md) |  | [optional] |
| **empty** | **Boolean** |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **single_valued** | **Boolean** |  | [optional] |
| **async** | **Boolean** |  | [optional] |
| **lazy** | **Boolean** |  | [optional] |
| **or_null** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::TryUUID.new(
  failure: null,
  cause: null,
  empty: null,
  success: null,
  single_valued: null,
  async: null,
  lazy: null,
  or_null: null
)
```

