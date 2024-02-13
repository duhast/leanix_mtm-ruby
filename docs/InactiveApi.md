# LeanixMtmApi::InactiveApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_inactive_users**](InactiveApi.md#get_inactive_users) | **GET** /inactive | inactive |


## get_inactive_users

> <UserListResponse> get_inactive_users(workspace_id, opts)

inactive

List inactive users. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InactiveApi.new
workspace_id = 'workspace_id_example' # String | The id of the workspace to query for inactive users.
opts = {
  alpha: 1.2, # Float | The alpha value for significance, when classifying users as inactive.
  min_days_until_absent: 56 # Integer | Minimum amount of days, when a regular user is seen as inactive regardless of usual login behavior.
}

begin
  # inactive
  result = api_instance.get_inactive_users(workspace_id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InactiveApi->get_inactive_users: #{e}"
end
```

#### Using the get_inactive_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResponse>, Integer, Hash)> get_inactive_users_with_http_info(workspace_id, opts)

```ruby
begin
  # inactive
  data, status_code, headers = api_instance.get_inactive_users_with_http_info(workspace_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InactiveApi->get_inactive_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | The id of the workspace to query for inactive users. |  |
| **alpha** | **Float** | The alpha value for significance, when classifying users as inactive. | [optional][default to 0.01] |
| **min_days_until_absent** | **Integer** | Minimum amount of days, when a regular user is seen as inactive regardless of usual login behavior. | [optional][default to 28] |

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

