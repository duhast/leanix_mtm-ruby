# LeanixMtmApi::Impersonation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **impersonator** | [**User**](User.md) |  |  |
| **workspace** | [**Workspace**](Workspace.md) |  |  |
| **login_time** | **Time** |  |  |
| **logout_time** | **Time** |  | [optional] |
| **language** | **String** |  |  |
| **reason** | **String** |  | [optional] |
| **access_token** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Impersonation.new(
  id: null,
  impersonator: null,
  workspace: null,
  login_time: null,
  logout_time: null,
  language: null,
  reason: null,
  access_token: null,
  refresh_token: null,
  links: null
)
```

