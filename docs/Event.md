# LeanixMtmApi::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **application** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **actor** | [**User**](User.md) |  |  |
| **account** | [**Account**](Account.md) |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **workspace** | [**Workspace**](Workspace.md) |  | [optional] |
| **contract** | [**Contract**](Contract.md) |  | [optional] |
| **instance** | [**Instance**](Instance.md) |  | [optional] |
| **identity_provider** | [**IdentityProvider**](IdentityProvider.md) |  | [optional] |
| **finished_at** | **Time** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |
| **payload** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Event.new(
  id: null,
  type: null,
  application: null,
  version: null,
  status: null,
  created_at: null,
  actor: null,
  account: null,
  user: null,
  workspace: null,
  contract: null,
  instance: null,
  identity_provider: null,
  finished_at: null,
  links: null,
  payload: null
)
```

