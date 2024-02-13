# LeanixMtmApi::Throwable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cause** | [**Throwable**](Throwable.md) |  | [optional] |
| **stack_trace** | [**Array&lt;StackTraceElement&gt;**](StackTraceElement.md) |  | [optional] |
| **message** | **String** |  | [optional] |
| **suppressed** | [**Array&lt;Throwable&gt;**](Throwable.md) |  | [optional] |
| **localized_message** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Throwable.new(
  cause: null,
  stack_trace: null,
  message: null,
  suppressed: null,
  localized_message: null
)
```

