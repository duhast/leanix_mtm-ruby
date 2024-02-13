# LeanixMtmApi::TechnicalusersApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_technical_user**](TechnicalusersApi.md#create_technical_user) | **POST** /technicalusers | createTechnicalUser |
| [**delete_technical_user**](TechnicalusersApi.md#delete_technical_user) | **DELETE** /technicalusers/{id} | deleteTechnicalUser |
| [**get_events**](TechnicalusersApi.md#get_events) | **GET** /technicalusers/{id}/changelog | getEvents |
| [**get_technical_user**](TechnicalusersApi.md#get_technical_user) | **GET** /technicalusers/{id} | getTechnicalUser |
| [**get_technical_users**](TechnicalusersApi.md#get_technical_users) | **GET** /technicalusers | Technical users |
| [**replace_token_for_technical_user**](TechnicalusersApi.md#replace_token_for_technical_user) | **PUT** /technicalusers/{id}/replaceToken | replaceTechnicalUserAPIToken |
| [**update_technical_user**](TechnicalusersApi.md#update_technical_user) | **PUT** /technicalusers/{id} | updateTechnicalUser |


## create_technical_user

> <TechnicalUserResponse> create_technical_user(body, opts)

createTechnicalUser

Create a technical user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
body = LeanixMtmApi::TechnicalUserInputData.new({user_name: 'user_name_example', permission_role: 'ADMIN'}) # TechnicalUserInputData | 
opts = {
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  # createTechnicalUser
  result = api_instance.create_technical_user(body, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->create_technical_user: #{e}"
end
```

#### Using the create_technical_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TechnicalUserResponse>, Integer, Hash)> create_technical_user_with_http_info(body, opts)

```ruby
begin
  # createTechnicalUser
  data, status_code, headers = api_instance.create_technical_user_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TechnicalUserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->create_technical_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TechnicalUserInputData**](TechnicalUserInputData.md) |  |  |
| **workspace_id** | **String** |  | [optional] |

### Return type

[**TechnicalUserResponse**](TechnicalUserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_technical_user

> delete_technical_user(id)

deleteTechnicalUser

Delete a technical user.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User UUID

begin
  # deleteTechnicalUser
  api_instance.delete_technical_user(id)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->delete_technical_user: #{e}"
end
```

#### Using the delete_technical_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_technical_user_with_http_info(id)

```ruby
begin
  # deleteTechnicalUser
  data, status_code, headers = api_instance.delete_technical_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->delete_technical_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_events

> <EventListResponse> get_events(id, opts)

getEvents

Retrieves the technical user events for an user 

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User UUID
opts = {
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getEvents
  result = api_instance.get_events(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->get_events: #{e}"
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
  puts "Error when calling TechnicalusersApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **workspace_id** | **String** |  | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 100, max 100) | [optional][default to 100] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional][default to &#39;createdAt-DESC&#39;] |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_technical_user

> <TechnicalUserResponse> get_technical_user(id, opts)

getTechnicalUser

Returns technical user data.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
id = 'id_example' # String | TechnicalUser UUID
opts = {
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the workspace the technical user belong to only usable for a System User
}

begin
  # getTechnicalUser
  result = api_instance.get_technical_user(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->get_technical_user: #{e}"
end
```

#### Using the get_technical_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TechnicalUserResponse>, Integer, Hash)> get_technical_user_with_http_info(id, opts)

```ruby
begin
  # getTechnicalUser
  data, status_code, headers = api_instance.get_technical_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TechnicalUserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->get_technical_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | TechnicalUser UUID |  |
| **workspace_id** | **String** | The id of the workspace the technical user belong to only usable for a System User | [optional] |

### Return type

[**TechnicalUserResponse**](TechnicalUserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_technical_users

> <TechnicalUserListResponse> get_technical_users(opts)

Technical users

List or search all technical users.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  query_user_name: 'query_user_name_example', # String | Search in technical user name (optional)
  sort: 'sort_example', # String | Comma-separated list of sorting (optional)
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the workspace the technical user belong to only usable for a System User
}

begin
  # Technical users
  result = api_instance.get_technical_users(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->get_technical_users: #{e}"
end
```

#### Using the get_technical_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TechnicalUserListResponse>, Integer, Hash)> get_technical_users_with_http_info(opts)

```ruby
begin
  # Technical users
  data, status_code, headers = api_instance.get_technical_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TechnicalUserListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->get_technical_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **query_user_name** | **String** | Search in technical user name (optional) | [optional] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional][default to &#39;userName-ASC&#39;] |
| **workspace_id** | **String** | The id of the workspace the technical user belong to only usable for a System User | [optional] |

### Return type

[**TechnicalUserListResponse**](TechnicalUserListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_token_for_technical_user

> <TechnicalUserResponse> replace_token_for_technical_user(id)

replaceTechnicalUserAPIToken

Replace the API Token for a technical user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | TechnicalUser UUID

begin
  # replaceTechnicalUserAPIToken
  result = api_instance.replace_token_for_technical_user(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->replace_token_for_technical_user: #{e}"
end
```

#### Using the replace_token_for_technical_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TechnicalUserResponse>, Integer, Hash)> replace_token_for_technical_user_with_http_info(id)

```ruby
begin
  # replaceTechnicalUserAPIToken
  data, status_code, headers = api_instance.replace_token_for_technical_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TechnicalUserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->replace_token_for_technical_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | TechnicalUser UUID |  |

### Return type

[**TechnicalUserResponse**](TechnicalUserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_technical_user

> <TechnicalUserResponse> update_technical_user(id, body)

updateTechnicalUser

Update a technical user

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::TechnicalusersApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | TechnicalUser UUID
body = LeanixMtmApi::TechnicalUserInputData.new({user_name: 'user_name_example', permission_role: 'ADMIN'}) # TechnicalUserInputData | 

begin
  # updateTechnicalUser
  result = api_instance.update_technical_user(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->update_technical_user: #{e}"
end
```

#### Using the update_technical_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TechnicalUserResponse>, Integer, Hash)> update_technical_user_with_http_info(id, body)

```ruby
begin
  # updateTechnicalUser
  data, status_code, headers = api_instance.update_technical_user_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TechnicalUserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling TechnicalusersApi->update_technical_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | TechnicalUser UUID |  |
| **body** | [**TechnicalUserInputData**](TechnicalUserInputData.md) |  |  |

### Return type

[**TechnicalUserResponse**](TechnicalUserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

