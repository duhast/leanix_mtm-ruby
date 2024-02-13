# LeanixMtmApi::Instant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chronology** | [**Chronology**](Chronology.md) |  | [optional] |
| **millis** | **Integer** |  | [optional] |
| **zone** | [**DateTimeZone**](DateTimeZone.md) |  | [optional] |
| **after_now** | **Boolean** |  | [optional] |
| **before_now** | **Boolean** |  | [optional] |
| **equal_now** | **Boolean** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Instant.new(
  chronology: null,
  millis: null,
  zone: null,
  after_now: null,
  before_now: null,
  equal_now: null
)
```

