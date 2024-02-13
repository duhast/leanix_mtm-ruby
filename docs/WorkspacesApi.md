# LeanixMtmApi::WorkspacesApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workspace**](WorkspacesApi.md#create_workspace) | **POST** /workspaces | createWorkspace |
| [**delete_workspace**](WorkspacesApi.md#delete_workspace) | **DELETE** /workspaces/{id} | deleteWorkspace |
| [**get_custom_feature_by_feature_id**](WorkspacesApi.md#get_custom_feature_by_feature_id) | **GET** /workspaces/{id}/customFeatures/{featureId} | getCustomFeature |
| [**get_custom_features**](WorkspacesApi.md#get_custom_features) | **GET** /workspaces/{id}/customFeatures | getCustomFeatures |
| [**get_events**](WorkspacesApi.md#get_events) | **GET** /workspaces/{id}/events | getEvents |
| [**get_feature_bundle**](WorkspacesApi.md#get_feature_bundle) | **GET** /workspaces/{id}/featureBundle | getFeatureBundle |
| [**get_impersonations**](WorkspacesApi.md#get_impersonations) | **GET** /workspaces/{id}/impersonations | getImpersonations |
| [**get_permission**](WorkspacesApi.md#get_permission) | **GET** /workspaces/{id}/permissions/{permissionId} | getPermission |
| [**get_permission_stats**](WorkspacesApi.md#get_permission_stats) | **GET** /workspaces/{id}/permissions/stats | getPermissionStats |
| [**get_permissions**](WorkspacesApi.md#get_permissions) | **GET** /workspaces/{id}/permissions | getPermissions |
| [**get_settings**](WorkspacesApi.md#get_settings) | **GET** /workspaces/{id}/settings | getSettings |
| [**get_support_user_permissions**](WorkspacesApi.md#get_support_user_permissions) | **GET** /workspaces/{id}/listSupportUsers | getSupportPermissions |
| [**get_user**](WorkspacesApi.md#get_user) | **GET** /workspaces/{id}/users/{userId} | getUsers |
| [**get_user_list_export**](WorkspacesApi.md#get_user_list_export) | **GET** /workspaces/{id}/permissions/export | getUserListExport |
| [**get_users**](WorkspacesApi.md#get_users) | **GET** /workspaces/{id}/users | getUsers |
| [**get_workspace**](WorkspacesApi.md#get_workspace) | **GET** /workspaces/{id} | getWorkspace |
| [**get_workspaces**](WorkspacesApi.md#get_workspaces) | **GET** /workspaces | getWorkspaces |
| [**get_workspaces_for_backup**](WorkspacesApi.md#get_workspaces_for_backup) | **GET** /workspaces/backupWorkspaces |  |
| [**update_workspace**](WorkspacesApi.md#update_workspace) | **PUT** /workspaces/{id} | updateWorkspace |


## create_workspace

> <WorkspaceResponse> create_workspace(body)

createWorkspace

Creates a workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
body = LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}) # Workspace | 

begin
  # createWorkspace
  result = api_instance.create_workspace(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace: #{e}"
end
```

#### Using the create_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceResponse>, Integer, Hash)> create_workspace_with_http_info(body)

```ruby
begin
  # createWorkspace
  data, status_code, headers = api_instance.create_workspace_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Workspace**](Workspace.md) |  |  |

### Return type

[**WorkspaceResponse**](WorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workspace

> <WorkspaceResponse> delete_workspace(id)

deleteWorkspace

Deletes a workspace. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID

begin
  # deleteWorkspace
  result = api_instance.delete_workspace(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace: #{e}"
end
```

#### Using the delete_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceResponse>, Integer, Hash)> delete_workspace_with_http_info(id)

```ruby
begin
  # deleteWorkspace
  data, status_code, headers = api_instance.delete_workspace_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**WorkspaceResponse**](WorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_feature_by_feature_id

> <CustomFeatureListResponse> get_custom_feature_by_feature_id(id, feature_id)

getCustomFeature

Returns the workspace specific custom feature by its featureId e.g. 'user.quota'

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace UUID
feature_id = 'feature_id_example' # String | Feature String id

begin
  # getCustomFeature
  result = api_instance.get_custom_feature_by_feature_id(id, feature_id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_custom_feature_by_feature_id: #{e}"
end
```

#### Using the get_custom_feature_by_feature_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureListResponse>, Integer, Hash)> get_custom_feature_by_feature_id_with_http_info(id, feature_id)

```ruby
begin
  # getCustomFeature
  data, status_code, headers = api_instance.get_custom_feature_by_feature_id_with_http_info(id, feature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_custom_feature_by_feature_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **feature_id** | **String** | Feature String id |  |

### Return type

[**CustomFeatureListResponse**](CustomFeatureListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_features

> <CustomFeatureListResponse> get_custom_features(id)

getCustomFeatures

Lists the workspace specific custom features

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID

begin
  # getCustomFeatures
  result = api_instance.get_custom_features(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_custom_features: #{e}"
end
```

#### Using the get_custom_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureListResponse>, Integer, Hash)> get_custom_features_with_http_info(id)

```ruby
begin
  # getCustomFeatures
  data, status_code, headers = api_instance.get_custom_features_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_custom_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**CustomFeatureListResponse**](CustomFeatureListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <EventListResponse> get_events(id, opts)

getEvents

Retrieves all events for a workspace (date must be ISO 8601 formatted)

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
opts = {
  since: 'since_example', # String | 
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example', # String | Comma-separated list of sorting (optional)
  event_type: 'event_type_example' # String | Event type filter (optional)
}

begin
  # getEvents
  result = api_instance.get_events(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_events: #{e}"
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
  puts "Error when calling WorkspacesApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **since** | **String** |  | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 100, max 100) | [optional][default to 100] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |
| **event_type** | **String** | Event type filter (optional) | [optional] |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_bundle

> <FeatureBundleResponse> get_feature_bundle(id)

getFeatureBundle

Retrieves a workspace feature bundle (setup settings)

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID

begin
  # getFeatureBundle
  result = api_instance.get_feature_bundle(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_feature_bundle: #{e}"
end
```

#### Using the get_feature_bundle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureBundleResponse>, Integer, Hash)> get_feature_bundle_with_http_info(id)

```ruby
begin
  # getFeatureBundle
  data, status_code, headers = api_instance.get_feature_bundle_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureBundleResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_feature_bundle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**FeatureBundleResponse**](FeatureBundleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_impersonations

> <ImpersonationListResponse> get_impersonations(id, opts)

getImpersonations

Read support user impersonations of the workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The workspace to create a support user impersonation for.
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getImpersonations
  result = api_instance.get_impersonations(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_impersonations: #{e}"
end
```

#### Using the get_impersonations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImpersonationListResponse>, Integer, Hash)> get_impersonations_with_http_info(id, opts)

```ruby
begin
  # getImpersonations
  data, status_code, headers = api_instance.get_impersonations_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImpersonationListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_impersonations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The workspace to create a support user impersonation for. |  |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**ImpersonationListResponse**](ImpersonationListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permission

> <PermissionResponse> get_permission(id, permission_id)

getPermission

Retrieves the permission with the given ID of the workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
permission_id = 'permission_id_example' # String | ID of the permission to get

begin
  # getPermission
  result = api_instance.get_permission(id, permission_id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_permission: #{e}"
end
```

#### Using the get_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionResponse>, Integer, Hash)> get_permission_with_http_info(id, permission_id)

```ruby
begin
  # getPermission
  data, status_code, headers = api_instance.get_permission_with_http_info(id, permission_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **permission_id** | **String** | ID of the permission to get |  |

### Return type

[**PermissionResponse**](PermissionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permission_stats

> <StatsListResponse> get_permission_stats(id)

getPermissionStats

Returns the total number of users within a workspace for each Permission Status (ACTIVE, ARCHIVED, INVITED...). Additionally, for each Permission Status a list of all Permission Roles (ADMIN, MEMBER...) and user count is provided. In other words, the result is a matrix of user counts with axis PermissionStatus and PermissionRole.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID

begin
  # getPermissionStats
  result = api_instance.get_permission_stats(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_permission_stats: #{e}"
end
```

#### Using the get_permission_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatsListResponse>, Integer, Hash)> get_permission_stats_with_http_info(id)

```ruby
begin
  # getPermissionStats
  data, status_code, headers = api_instance.get_permission_stats_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatsListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_permission_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**StatsListResponse**](StatsListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permissions

> <PermissionListResponse> get_permissions(id, opts)

getPermissions

Retrieves all permission (users) for the workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
opts = {
  q: 'q_example', # String | Query string to search in user (first name, last name, role)
  email: 'email_example', # String | Email to search for
  status: 'status_example', # String | Optional status to search for
  include_technical_users: true, # Boolean | Include technical users in listing
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getPermissions
  result = api_instance.get_permissions(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_permissions: #{e}"
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
  puts "Error when calling WorkspacesApi->get_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **q** | **String** | Query string to search in user (first name, last name, role) | [optional] |
| **email** | **String** | Email to search for | [optional] |
| **status** | **String** | Optional status to search for | [optional] |
| **include_technical_users** | **Boolean** | Include technical users in listing | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
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

Lists the workspace specific settings

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
opts = {
  type: 'CONFIG' # String | Setting type
}

begin
  # getSettings
  result = api_instance.get_settings(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_settings: #{e}"
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
  puts "Error when calling WorkspacesApi->get_settings_with_http_info: #{e}"
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


## get_support_user_permissions

> Array&lt;Object&gt; get_support_user_permissions(id)

getSupportPermissions

Retrieves all active support users for a workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID

begin
  # getSupportPermissions
  result = api_instance.get_support_user_permissions(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_support_user_permissions: #{e}"
end
```

#### Using the get_support_user_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> get_support_user_permissions_with_http_info(id)

```ruby
begin
  # getSupportPermissions
  data, status_code, headers = api_instance.get_support_user_permissions_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_support_user_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

**Array&lt;Object&gt;**

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <UserListResponse> get_user(id, user_id, opts)

getUsers

Retrieves a specific user with a permission for this workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
user_id = 'user_id_example' # String | User UUID
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getUsers
  result = api_instance.get_user(id, user_id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResponse>, Integer, Hash)> get_user_with_http_info(id, user_id, opts)

```ruby
begin
  # getUsers
  data, status_code, headers = api_instance.get_user_with_http_info(id, user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **user_id** | **String** | User UUID |  |
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


## get_user_list_export

> <DownloadKeyResponse> get_user_list_export(id)

getUserListExport

Creates an EXCEL export of the user list

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace UUID

begin
  # getUserListExport
  result = api_instance.get_user_list_export(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_user_list_export: #{e}"
end
```

#### Using the get_user_list_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DownloadKeyResponse>, Integer, Hash)> get_user_list_export_with_http_info(id)

```ruby
begin
  # getUserListExport
  data, status_code, headers = api_instance.get_user_list_export_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DownloadKeyResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_user_list_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**DownloadKeyResponse**](DownloadKeyResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <UserListResponse> get_users(id, opts)

getUsers

Retrieves all users for the workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getUsers
  result = api_instance.get_users(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResponse>, Integer, Hash)> get_users_with_http_info(id, opts)

```ruby
begin
  # getUsers
  data, status_code, headers = api_instance.get_users_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
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


## get_workspace

> <WorkspaceResponse> get_workspace(id)

getWorkspace

Retrieves a workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID

begin
  # getWorkspace
  result = api_instance.get_workspace(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace: #{e}"
end
```

#### Using the get_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceResponse>, Integer, Hash)> get_workspace_with_http_info(id)

```ruby
begin
  # getWorkspace
  data, status_code, headers = api_instance.get_workspace_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**WorkspaceResponse**](WorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <WorkspaceListResponse> get_workspaces(opts)

getWorkspaces

List all workspaces for the requesting user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
opts = {
  q: 'q_example', # String | Search query
  feature: 'feature_example', # String | Feature Flag Filter
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getWorkspaces
  result = api_instance.get_workspaces(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceListResponse>, Integer, Hash)> get_workspaces_with_http_info(opts)

```ruby
begin
  # getWorkspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Search query | [optional] |
| **feature** | **String** | Feature Flag Filter | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional][default to &#39;id-asc&#39;] |

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces_for_backup

> Hash&lt;String, Array&lt;String&gt;&gt; get_workspaces_for_backup



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new

begin
  
  result = api_instance.get_workspaces_for_backup
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces_for_backup: #{e}"
end
```

#### Using the get_workspaces_for_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;String&gt;&gt;, Integer, Hash)> get_workspaces_for_backup_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_workspaces_for_backup_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;String&gt;&gt;
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspaces_for_backup_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_workspace

> <WorkspaceResponse> update_workspace(id, body)

updateWorkspace

Updates a workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::WorkspacesApi.new
id = 'id_example' # String | Workspace UUID
body = LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}) # Workspace | 

begin
  # updateWorkspace
  result = api_instance.update_workspace(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->update_workspace: #{e}"
end
```

#### Using the update_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceResponse>, Integer, Hash)> update_workspace_with_http_info(id, body)

```ruby
begin
  # updateWorkspace
  data, status_code, headers = api_instance.update_workspace_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling WorkspacesApi->update_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |
| **body** | [**Workspace**](Workspace.md) |  |  |

### Return type

[**WorkspaceResponse**](WorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

