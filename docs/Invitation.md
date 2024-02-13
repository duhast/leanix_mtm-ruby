# LeanixMtmApi::Invitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | [**User**](User.md) |  |  |
| **user** | [**User**](User.md) |  |  |
| **workspace** | [**Workspace**](Workspace.md) |  |  |
| **permission** | [**Permission**](Permission.md) |  |  |
| **caused_by_confirmation** | **Boolean** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Invitation.new(
  host: null,
  user: null,
  workspace: null,
  permission: null,
  caused_by_confirmation: null,
  message: null
)
```

