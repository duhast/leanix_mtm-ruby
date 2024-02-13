# LeanixMtmApi::SettingsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_setting**](SettingsApi.md#create_setting) | **POST** /settings | createSetting |
| [**delete_setting**](SettingsApi.md#delete_setting) | **DELETE** /settings/{id} | Delete a setting |
| [**get_notification_settings**](SettingsApi.md#get_notification_settings) | **GET** /settings/notificationSettings | getNotificationSettings |
| [**get_setting**](SettingsApi.md#get_setting) | **GET** /settings/{id} | getSetting |
| [**get_settings**](SettingsApi.md#get_settings) | **GET** /settings | getSettings |
| [**set_workspace_notification_status**](SettingsApi.md#set_workspace_notification_status) | **POST** /settings/notifications | toggleNotifications |
| [**update_setting**](SettingsApi.md#update_setting) | **PUT** /settings/{id} | Update a setting |


## create_setting

> <SettingResponse> create_setting(body)

createSetting

Endpoint to set a setting.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
body = LeanixMtmApi::Setting.new({type: 'SETUP'}) # Setting | 

begin
  # createSetting
  result = api_instance.create_setting(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->create_setting: #{e}"
end
```

#### Using the create_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingResponse>, Integer, Hash)> create_setting_with_http_info(body)

```ruby
begin
  # createSetting
  data, status_code, headers = api_instance.create_setting_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->create_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Setting**](Setting.md) |  |  |

### Return type

[**SettingResponse**](SettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_setting

> <SettingResponse> delete_setting(id)

Delete a setting

Endpoint to delete a setting.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
id = 'id_example' # String | Setting UUID

begin
  # Delete a setting
  result = api_instance.delete_setting(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->delete_setting: #{e}"
end
```

#### Using the delete_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingResponse>, Integer, Hash)> delete_setting_with_http_info(id)

```ruby
begin
  # Delete a setting
  data, status_code, headers = api_instance.delete_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->delete_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Setting UUID |  |

### Return type

[**SettingResponse**](SettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_notification_settings

> <SettingListResponse> get_notification_settings(account_id)

getNotificationSettings

Endpoint to get all settings related to notifications, internal usage only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # getNotificationSettings
  result = api_instance.get_notification_settings(account_id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->get_notification_settings: #{e}"
end
```

#### Using the get_notification_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingListResponse>, Integer, Hash)> get_notification_settings_with_http_info(account_id)

```ruby
begin
  # getNotificationSettings
  data, status_code, headers = api_instance.get_notification_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->get_notification_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**SettingListResponse**](SettingListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_setting

> <SettingResponse> get_setting(id)

getSetting

Endpoint to get a setting.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
id = 'id_example' # String | Setting UUID

begin
  # getSetting
  result = api_instance.get_setting(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->get_setting: #{e}"
end
```

#### Using the get_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingResponse>, Integer, Hash)> get_setting_with_http_info(id)

```ruby
begin
  # getSetting
  data, status_code, headers = api_instance.get_setting_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->get_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Setting UUID |  |

### Return type

[**SettingResponse**](SettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_settings

> <SettingListResponse> get_settings(opts)

getSettings

Retrieves settings

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
opts = {
  account_id: 'account_id_example', # String | Account UUID
  contract_id: 'contract_id_example', # String | Contract UUID
  user_id: 'user_id_example', # String | User UUID
  workspace_id: 'workspace_id_example', # String | Workspace UUID
  permission_id: 'permission_id_example', # String | Permission UUID
  application: 'application_example', # String | Application name
  type: 'CONFIG' # String | Setting type
}

begin
  # getSettings
  result = api_instance.get_settings(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingListResponse>, Integer, Hash)> get_settings_with_http_info(opts)

```ruby
begin
  # getSettings
  data, status_code, headers = api_instance.get_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account UUID | [optional] |
| **contract_id** | **String** | Contract UUID | [optional] |
| **user_id** | **String** | User UUID | [optional] |
| **workspace_id** | **String** | Workspace UUID | [optional] |
| **permission_id** | **String** | Permission UUID | [optional] |
| **application** | **String** | Application name | [optional] |
| **type** | **String** | Setting type | [optional] |

### Return type

[**SettingListResponse**](SettingListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_workspace_notification_status

> <SettingResponse> set_workspace_notification_status(disabled)

toggleNotifications

Endpoint to enable/disable notifications.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
disabled = true # Boolean | 

begin
  # toggleNotifications
  result = api_instance.set_workspace_notification_status(disabled)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->set_workspace_notification_status: #{e}"
end
```

#### Using the set_workspace_notification_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingResponse>, Integer, Hash)> set_workspace_notification_status_with_http_info(disabled)

```ruby
begin
  # toggleNotifications
  data, status_code, headers = api_instance.set_workspace_notification_status_with_http_info(disabled)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->set_workspace_notification_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled** | **Boolean** |  |  |

### Return type

[**SettingResponse**](SettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_setting

> <SettingResponse> update_setting(id, body)

Update a setting

Endpoint to update a setting.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::SettingsApi.new
id = 'id_example' # String | Setting UUID
body = LeanixMtmApi::Setting.new({type: 'SETUP'}) # Setting | 

begin
  # Update a setting
  result = api_instance.update_setting(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->update_setting: #{e}"
end
```

#### Using the update_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingResponse>, Integer, Hash)> update_setting_with_http_info(id, body)

```ruby
begin
  # Update a setting
  data, status_code, headers = api_instance.update_setting_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling SettingsApi->update_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Setting UUID |  |
| **body** | [**Setting**](Setting.md) |  |  |

### Return type

[**SettingResponse**](SettingResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

