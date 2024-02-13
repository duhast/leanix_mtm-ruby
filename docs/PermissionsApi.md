# LeanixMtmApi::PermissionsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_permission**](PermissionsApi.md#create_permission) | **POST** /permissions | setPermission |
| [**get_permission**](PermissionsApi.md#get_permission) | **GET** /permissions/{id} | getPermission |
| [**get_permissions**](PermissionsApi.md#get_permissions) | **GET** /permissions | getPermissions |
| [**get_settings**](PermissionsApi.md#get_settings) | **GET** /permissions/{id}/settings | Settings |
| [**get_user_random**](PermissionsApi.md#get_user_random) | **GET** /permissions/sample |  |


## create_permission

> <PermissionResponse> create_permission(body)

setPermission

Set a user permission for a workspace. If the related user object contains changed data, the data is persisted.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::PermissionsApi.new
body = LeanixMtmApi::Permission.new({user: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}), workspace: LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}), role: 'ADMIN', status: 'NOTINVITED'}) # Permission | 

begin
  # setPermission
  result = api_instance.create_permission(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->create_permission: #{e}"
end
```

#### Using the create_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionResponse>, Integer, Hash)> create_permission_with_http_info(body)

```ruby
begin
  # setPermission
  data, status_code, headers = api_instance.create_permission_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->create_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Permission**](Permission.md) |  |  |

### Return type

[**PermissionResponse**](PermissionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_permission

> <PermissionResponse> get_permission(id)

getPermission

Retrieves one permission for requested permission id.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::PermissionsApi.new
id = 'id_example' # String | Permission UUID

begin
  # getPermission
  result = api_instance.get_permission(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_permission: #{e}"
end
```

#### Using the get_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionResponse>, Integer, Hash)> get_permission_with_http_info(id)

```ruby
begin
  # getPermission
  data, status_code, headers = api_instance.get_permission_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Permission UUID |  |

### Return type

[**PermissionResponse**](PermissionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permissions

> <PermissionListResponse> get_permissions(opts)

getPermissions

Endpoint to list the user permissions. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::PermissionsApi.new
opts = {
  user_id: 'user_id_example', # String | User UUID
  workspace_id: 'workspace_id_example', # String | Workspace UUID
  q: 'q_example', # String | Query string to search the related user
  email: 'email_example', # String | Email to search for, may also be a comma separated list of emails
  status: 'status_example', # String | Optional status to search for
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 50, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getPermissions
  result = api_instance.get_permissions(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_permissions: #{e}"
end
```

#### Using the get_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionListResponse>, Integer, Hash)> get_permissions_with_http_info(opts)

```ruby
begin
  # getPermissions
  data, status_code, headers = api_instance.get_permissions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User UUID | [optional] |
| **workspace_id** | **String** | Workspace UUID | [optional] |
| **q** | **String** | Query string to search the related user | [optional] |
| **email** | **String** | Email to search for, may also be a comma separated list of emails | [optional] |
| **status** | **String** | Optional status to search for | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 50, max 100) | [optional][default to 50] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**PermissionListResponse**](PermissionListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_settings

> <SettingListResponse> get_settings(id, opts)

Settings

Endpoint to list the permission specific settings.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::PermissionsApi.new
id = 'id_example' # String | Workspace UUID
opts = {
  type: 'CONFIG' # String | Setting type
}

begin
  # Settings
  result = api_instance.get_settings(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingListResponse>, Integer, Hash)> get_settings_with_http_info(id, opts)

```ruby
begin
  # Settings
  data, status_code, headers = api_instance.get_settings_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **type** | **String** | Setting type | [optional] |

### Return type

[**SettingListResponse**](SettingListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_random

> <Array<PermissionEventPayload>> get_user_random(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::PermissionsApi.new
opts = {
  max_results: 56 # Integer | 
}

begin
  
  result = api_instance.get_user_random(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_user_random: #{e}"
end
```

#### Using the get_user_random_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PermissionEventPayload>>, Integer, Hash)> get_user_random_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_random_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PermissionEventPayload>>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling PermissionsApi->get_user_random_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_results** | **Integer** |  | [optional] |

### Return type

[**Array&lt;PermissionEventPayload&gt;**](PermissionEventPayload.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

