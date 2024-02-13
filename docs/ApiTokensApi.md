# LeanixMtmApi::ApiTokensApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_token**](ApiTokensApi.md#create_api_token) | **POST** /apiTokens | createApiToken |
| [**delete_api_token**](ApiTokensApi.md#delete_api_token) | **DELETE** /apiTokens/{id} | deleteApiToken |
| [**get_api_token**](ApiTokensApi.md#get_api_token) | **GET** /apiTokens/{id} | getApiToken |
| [**get_api_tokens**](ApiTokensApi.md#get_api_tokens) | **GET** /apiTokens | getApiTokens |
| [**update_api_token**](ApiTokensApi.md#update_api_token) | **PUT** /apiTokens/{id} | updateApiToken |


## create_api_token

> <ApiTokenResponse> create_api_token(api_token)

createApiToken

Creates a personal API Token. Personal API Tokens are deprecated. Please use the 'Technical User' functionality to create an API Token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApiTokensApi.new
api_token = LeanixMtmApi::ApiToken.new({user_id: 'user_id_example', workspace_id: 'workspace_id_example', expiry: Time.now, creator_id: 'creator_id_example'}) # ApiToken | 

begin
  # createApiToken
  result = api_instance.create_api_token(api_token)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->create_api_token: #{e}"
end
```

#### Using the create_api_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTokenResponse>, Integer, Hash)> create_api_token_with_http_info(api_token)

```ruby
begin
  # createApiToken
  data, status_code, headers = api_instance.create_api_token_with_http_info(api_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTokenResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->create_api_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_token** | [**ApiToken**](ApiToken.md) |  |  |

### Return type

[**ApiTokenResponse**](ApiTokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_token

> delete_api_token(id)

deleteApiToken

Deletes a personal API Token. Personal API Tokens are deprecated. Please use the 'Technical User' functionality to create an API Token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApiTokensApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # deleteApiToken
  api_instance.delete_api_token(id)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->delete_api_token: #{e}"
end
```

#### Using the delete_api_token_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_api_token_with_http_info(id)

```ruby
begin
  # deleteApiToken
  data, status_code, headers = api_instance.delete_api_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->delete_api_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_api_token

> <ApiTokenResponse> get_api_token(id)

getApiToken

Retrieves a personal API Token. Personal API Tokens are deprecated. Please use the 'Technical User' functionality to create an API Token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApiTokensApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # getApiToken
  result = api_instance.get_api_token(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->get_api_token: #{e}"
end
```

#### Using the get_api_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTokenResponse>, Integer, Hash)> get_api_token_with_http_info(id)

```ruby
begin
  # getApiToken
  data, status_code, headers = api_instance.get_api_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTokenResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->get_api_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ApiTokenResponse**](ApiTokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_tokens

> <ApiTokenListResponse> get_api_tokens(opts)

getApiTokens

Retrieves all matching personal API Tokens.  Personal API Tokens are deprecated. Please use the 'Technical User' functionality to create an API Token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApiTokensApi.new
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example', # String | Comma-separated list of sorting (optional)
  identifier: 'identifier_example', # String | Filter by identifier (optional)
  user_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Find tokens belonging to this user id. (optional, only allowed for SYSTEM user)
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Find tokens belonging to this workspace id. (optional)
}

begin
  # getApiTokens
  result = api_instance.get_api_tokens(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->get_api_tokens: #{e}"
end
```

#### Using the get_api_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTokenListResponse>, Integer, Hash)> get_api_tokens_with_http_info(opts)

```ruby
begin
  # getApiTokens
  data, status_code, headers = api_instance.get_api_tokens_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTokenListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->get_api_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |
| **identifier** | **String** | Filter by identifier (optional) | [optional] |
| **user_id** | **String** | Find tokens belonging to this user id. (optional, only allowed for SYSTEM user) | [optional] |
| **workspace_id** | **String** | Find tokens belonging to this workspace id. (optional) | [optional] |

### Return type

[**ApiTokenListResponse**](ApiTokenListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_token

> <ApiTokenResponse> update_api_token(id, token_data)

updateApiToken

Updates a personal API Token. Personal API Tokens are deprecated. Please use the 'Technical User' functionality to create an API Token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApiTokensApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
token_data = LeanixMtmApi::ApiToken.new({user_id: 'user_id_example', workspace_id: 'workspace_id_example', expiry: Time.now, creator_id: 'creator_id_example'}) # ApiToken | 

begin
  # updateApiToken
  result = api_instance.update_api_token(id, token_data)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->update_api_token: #{e}"
end
```

#### Using the update_api_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTokenResponse>, Integer, Hash)> update_api_token_with_http_info(id, token_data)

```ruby
begin
  # updateApiToken
  data, status_code, headers = api_instance.update_api_token_with_http_info(id, token_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTokenResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApiTokensApi->update_api_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **token_data** | [**ApiToken**](ApiToken.md) |  |  |

### Return type

[**ApiTokenResponse**](ApiTokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

