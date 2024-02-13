# LeanixMtmApi::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account** | [**Account**](Account.md) |  |  |
| **user_name** | **String** |  | [optional] |
| **technical_user_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **technical_user_email** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **department** | **String** |  | [optional] |
| **last_login** | **Time** |  | [optional] |
| **current_login** | **Time** |  | [optional] |
| **api_key** | **String** |  | [optional] |
| **feed_key** | **String** |  | [optional] |
| **role** | **String** |  |  |
| **status** | **String** |  |  |
| **crm_tags** | **String** |  | [optional] |
| **crm_link** | **String** |  | [optional] |
| **number_of_failed_login_attempts** | **Integer** |  | [optional] |
| **technical_user** | **Boolean** |  | [optional] |
| **scim_managed** | **Boolean** |  | [optional] |
| **transient_user** | **Boolean** |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] |
| **permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] |
| **replayed** | **Boolean** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::User.new(
  id: null,
  account: null,
  user_name: null,
  technical_user_name: null,
  email: null,
  technical_user_email: null,
  first_name: null,
  last_name: null,
  department: null,
  last_login: null,
  current_login: null,
  api_key: null,
  feed_key: null,
  role: null,
  status: null,
  crm_tags: null,
  crm_link: null,
  number_of_failed_login_attempts: null,
  technical_user: null,
  scim_managed: null,
  transient_user: null,
  links: null,
  permissions: null,
  replayed: null,
  active: null,
  display_name: null
)
```

