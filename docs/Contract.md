# LeanixMtmApi::Contract

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **feature_bundle_id** | **String** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **type** | **String** |  |  |
| **status** | **String** |  |  |
| **comment** | **String** |  | [optional] |
| **account** | [**Account**](Account.md) |  | [optional] |
| **application** | [**Application**](Application.md) |  |  |
| **active** | **Boolean** |  | [optional][readonly] |
| **display_name** | **String** | An artificial name describing the contract. | [optional][readonly] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional][readonly] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::Contract.new(
  id: null,
  feature_bundle_id: null,
  start_date: null,
  end_date: null,
  type: null,
  status: null,
  comment: null,
  account: null,
  application: null,
  active: null,
  display_name: null,
  links: null
)
```

