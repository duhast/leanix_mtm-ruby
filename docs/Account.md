# LeanixMtmApi::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **from_address** | **String** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |
| **responsible_user** | [**User**](User.md) |  | [optional] |
| **password_policy** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Account.new(
  id: null,
  name: null,
  from_address: null,
  links: null,
  responsible_user: null,
  password_policy: null
)
```

