# LeanixMtmApi::CustomFeature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **workspace** | [**Workspace**](Workspace.md) |  | [optional] |
| **contract** | [**Contract**](Contract.md) |  | [optional] |
| **feature_id** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **quota** | **Integer** |  | [optional] |
| **feature** | [**Feature**](Feature.md) |  | [optional] |
| **scope** | **String** |  | [optional][readonly] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::CustomFeature.new(
  id: null,
  workspace: null,
  contract: null,
  feature_id: null,
  status: null,
  quota: null,
  feature: null,
  scope: null,
  links: null
)
```

