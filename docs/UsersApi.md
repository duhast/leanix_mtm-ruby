# LeanixMtmApi::UsersApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_or_update**](UsersApi.md#create_or_update) | **PUT** /users/{id}/segment | createOrUpdateUserSegment |
| [**create_user**](UsersApi.md#create_user) | **POST** /users | createUser |
| [**create_user_password**](UsersApi.md#create_user_password) | **POST** /users/{id}/password | createUserPassword |
| [**get**](UsersApi.md#get) | **GET** /users/{id}/segment | getUserSegment |
| [**get_events**](UsersApi.md#get_events) | **GET** /users/{id}/events | getEvents |
| [**get_permissions**](UsersApi.md#get_permissions) | **GET** /users/{id}/permissions | getPermissions |
| [**get_settings**](UsersApi.md#get_settings) | **GET** /users/{id}/settings | getSettings |
| [**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | getUser |
| [**get_user_random**](UsersApi.md#get_user_random) | **GET** /users/sample |  |
| [**get_users**](UsersApi.md#get_users) | **GET** /users | User |
| [**set_password**](UsersApi.md#set_password) | **POST** /users/{id}/passwords | Reset Password |
| [**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | updateUser |


## create_or_update

> <UserSegmentDTO> create_or_update(id)

createOrUpdateUserSegment

Create or update the segment of a user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # createOrUpdateUserSegment
  result = api_instance.create_or_update(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->create_or_update: #{e}"
end
```

#### Using the create_or_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegmentDTO>, Integer, Hash)> create_or_update_with_http_info(id)

```ruby
begin
  # createOrUpdateUserSegment
  data, status_code, headers = api_instance.create_or_update_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSegmentDTO>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->create_or_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UserSegmentDTO**](UserSegmentDTO.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_user

> <UserResponse> create_user(body)

createUser

Create a user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
body = LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}) # User | 

begin
  # createUser
  result = api_instance.create_user(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> create_user_with_http_info(body)

```ruby
begin
  # createUser
  data, status_code, headers = api_instance.create_user_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**User**](User.md) |  |  |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_password

> <UserResponse> create_user_password(id)

createUserPassword

Create a password for a user. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User UUID

begin
  # createUserPassword
  result = api_instance.create_user_password(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->create_user_password: #{e}"
end
```

#### Using the create_user_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> create_user_password_with_http_info(id)

```ruby
begin
  # createUserPassword
  data, status_code, headers = api_instance.create_user_password_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->create_user_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get

> <UserSegmentDTO> get(id)

getUserSegment

Get the segment of a user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # getUserSegment
  result = api_instance.get(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get: #{e}"
end
```

#### Using the get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSegmentDTO>, Integer, Hash)> get_with_http_info(id)

```ruby
begin
  # getUserSegment
  data, status_code, headers = api_instance.get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSegmentDTO>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**UserSegmentDTO**](UserSegmentDTO.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <EventListResponse> get_events(id, opts)

getEvents

Retrieves all events for an user (date must be ISO 8601 formatted)

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = 'id_example' # String | User UUID
opts = {
  since: 'since_example', # String | 
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getEvents
  result = api_instance.get_events(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListResponse>, Integer, Hash)> get_events_with_http_info(id, opts)

```ruby
begin
  # getEvents
  data, status_code, headers = api_instance.get_events_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **since** | **String** |  | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 100, max 100) | [optional][default to 100] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permissions

> <PermissionListResponse> get_permissions(id, opts)

getPermissions

Endpoint to list the user permissions.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = 'id_example' # String | User UUID
opts = {
  include_potential_permissions: true, # Boolean | Include potential permissions, i.e. permissions that do not exist yet but would be created on first login attempt. (optional)
  valid_only: true, # Boolean | Show only active permissions. (optional)
  q: 'q_example', # String | Query string to search in workspace and role
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getPermissions
  result = api_instance.get_permissions(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_permissions: #{e}"
end
```

#### Using the get_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionListResponse>, Integer, Hash)> get_permissions_with_http_info(id, opts)

```ruby
begin
  # getPermissions
  data, status_code, headers = api_instance.get_permissions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **include_potential_permissions** | **Boolean** | Include potential permissions, i.e. permissions that do not exist yet but would be created on first login attempt. (optional) | [optional][default to false] |
| **valid_only** | **Boolean** | Show only active permissions. (optional) | [optional][default to false] |
| **q** | **String** | Query string to search in workspace and role | [optional] |
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

getSettings

Endpoint to list the user specific settings.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = 'id_example' # String | User UUID
opts = {
  type: 'CONFIG' # String | Setting type
}

begin
  # getSettings
  result = api_instance.get_settings(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingListResponse>, Integer, Hash)> get_settings_with_http_info(id, opts)

```ruby
begin
  # getSettings
  data, status_code, headers = api_instance.get_settings_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **type** | **String** | Setting type | [optional] |

### Return type

[**SettingListResponse**](SettingListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <UserResponse> get_user(id, opts)

getUser

Returns user data.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = 'id_example' # String | User UUID
opts = {
  return_single_permission: true # Boolean | If true returns only the permission for the workspace of the auth user
}

begin
  # getUser
  result = api_instance.get_user(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> get_user_with_http_info(id, opts)

```ruby
begin
  # getUser
  data, status_code, headers = api_instance.get_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **return_single_permission** | **Boolean** | If true returns only the permission for the workspace of the auth user | [optional] |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_random

> Array&lt;Hash&lt;String, Object&gt;&gt; get_user_random(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
opts = {
  max_results: 56 # Integer | 
}

begin
  
  result = api_instance.get_user_random(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_user_random: #{e}"
end
```

#### Using the get_user_random_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Hash&lt;String, Object&gt;&gt;, Integer, Hash)> get_user_random_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_random_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Hash&lt;String, Object&gt;&gt;
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_user_random_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_results** | **Integer** |  | [optional] |

### Return type

**Array&lt;Hash&lt;String, Object&gt;&gt;**

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <UserListResponse> get_users(opts)

User

List or search all users.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
opts = {
  email: 'email_example', # String | Search by email address (optional)
  q: 'q_example', # String | Search in user name or name (optional)
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # User
  result = api_instance.get_users(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResponse>, Integer, Hash)> get_users_with_http_info(opts)

```ruby
begin
  # User
  data, status_code, headers = api_instance.get_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Search by email address (optional) | [optional] |
| **q** | **String** | Search in user name or name (optional) | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_password

> <UserResponse> set_password(id, body)

Reset Password

Endpoint to finish the reset the password process, can only be accessed by systems.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = 'id_example' # String | User UUID
body = LeanixMtmApi::PasswordChangeRequest.new # PasswordChangeRequest | 

begin
  # Reset Password
  result = api_instance.set_password(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->set_password: #{e}"
end
```

#### Using the set_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> set_password_with_http_info(id, body)

```ruby
begin
  # Reset Password
  data, status_code, headers = api_instance.set_password_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->set_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **body** | [**PasswordChangeRequest**](PasswordChangeRequest.md) |  |  |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <UserResponse> update_user(id, body, opts)

updateUser

Update a user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::UsersApi.new
id = 'id_example' # String | User UUID
body = LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}) # User | 
opts = {
  no_additional_permissions: true # Boolean | If true returns only the permissions already provided
}

begin
  # updateUser
  result = api_instance.update_user(id, body, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> update_user_with_http_info(id, body, opts)

```ruby
begin
  # updateUser
  data, status_code, headers = api_instance.update_user_with_http_info(id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **body** | [**User**](User.md) |  |  |
| **no_additional_permissions** | **Boolean** | If true returns only the permissions already provided | [optional] |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

