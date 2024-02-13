# LeanixMtmApi::Setting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account** | [**Account**](Account.md) |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **workspace** | [**Workspace**](Workspace.md) |  | [optional] |
| **permission** | [**Permission**](Permission.md) |  | [optional] |
| **application** | [**Application**](Application.md) |  | [optional] |
| **contract** | [**Contract**](Contract.md) |  | [optional] |
| **key** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **comment** | **String** |  | [optional] |
| **scope** | **String** |  | [optional][readonly] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Setting.new(
  id: null,
  account: null,
  user: null,
  workspace: null,
  permission: null,
  application: null,
  contract: null,
  key: null,
  value: null,
  type: null,
  comment: null,
  scope: null,
  links: null
)
```

