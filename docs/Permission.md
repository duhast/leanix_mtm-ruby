# LeanixMtmApi::Permission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |
| **id** | **String** |  | [optional] |
| **user** | [**User**](User.md) |  |  |
| **workspace** | [**Workspace**](Workspace.md) |  |  |
| **workspace_id** | **String** |  | [optional] |
| **role** | **String** |  |  |
| **status** | **String** |  |  |
| **last_login** | **Time** |  | [optional] |
| **invited_by_user** | [**User**](User.md) |  | [optional] |
| **reviewed_by_user** | [**User**](User.md) |  | [optional] |
| **customer_roles** | **String** |  | [optional] |
| **access_control_entities** | **String** |  | [optional] |
| **ignore_blacklist** | **Boolean** |  | [optional] |
| **count** | **Integer** |  | [optional] |
| **replayed** | **Boolean** |  | [optional] |
| **active** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Permission.new(
  links: null,
  id: null,
  user: null,
  workspace: null,
  workspace_id: null,
  role: null,
  status: null,
  last_login: null,
  invited_by_user: null,
  reviewed_by_user: null,
  customer_roles: null,
  access_control_entities: null,
  ignore_blacklist: null,
  count: null,
  replayed: null,
  active: null
)
```

