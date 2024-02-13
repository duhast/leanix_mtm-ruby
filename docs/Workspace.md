# LeanixMtmApi::Workspace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **contract** | [**Contract**](Contract.md) |  |  |
| **instance** | [**Instance**](Instance.md) |  | [optional] |
| **domain** | [**Domain**](Domain.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **feature_bundle_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **product** | **String** |  | [optional] |
| **default_role** | **String** |  | [optional] |
| **comment** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **invitation_only** | **Boolean** |  | [optional] |
| **allow_transient_users** | **Boolean** |  | [optional] |
| **replayed** | **Boolean** |  | [optional] |
| **replayed_v2** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional][readonly] |
| **active** | **Boolean** |  | [optional][readonly] |
| **created_from_template** | **Boolean** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Workspace.new(
  id: null,
  contract: null,
  instance: null,
  domain: null,
  name: null,
  feature_bundle_id: null,
  status: null,
  type: null,
  product: null,
  default_role: null,
  comment: null,
  created_at: null,
  invitation_only: null,
  allow_transient_users: null,
  replayed: null,
  replayed_v2: null,
  url: null,
  active: null,
  created_from_template: null,
  links: null
)
```

