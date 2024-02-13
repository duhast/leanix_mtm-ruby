# LeanixMtmApi::StackTraceElement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **class_loader_name** | **String** |  | [optional] |
| **module_name** | **String** |  | [optional] |
| **module_version** | **String** |  | [optional] |
| **method_name** | **String** |  | [optional] |
| **file_name** | **String** |  | [optional] |
| **line_number** | **Integer** |  | [optional] |
| **native_method** | **Boolean** |  | [optional] |
| **class_name** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::StackTraceElement.new(
  class_loader_name: null,
  module_name: null,
  module_version: null,
  method_name: null,
  file_name: null,
  line_number: null,
  native_method: null,
  class_name: null
)
```

