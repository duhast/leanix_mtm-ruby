# LeanixMtmApi::Oauth2Api

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**token**](Oauth2Api.md#token) | **POST** /oauth2/token | token |
| [**token_0**](Oauth2Api.md#token_0) | **POST** /oauth2/token/switchWorkspace/{workspaceId} |  |


## token

> <AccessTokenResponse> token(opts)

token

Creates an access token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::Oauth2Api.new
opts = {
  authorization: 'authorization_example', # String | 
  allow_inactive_workspace: true, # Boolean | 
  client_id: 'client_id_example', # String | 
  client_secret: 'client_secret_example', # String | 
  code: 'code_example', # String | 
  grant_type: 'grant_type_example', # String | 
  redirect_uri: 'redirect_uri_example', # String | 
  refresh_token: 'refresh_token_example', # String | 
  username: 'username_example', # String | 
  password: 'password_example', # String | 
  scope: 'scope_example' # String | 
}

begin
  # token
  result = api_instance.token(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling Oauth2Api->token: #{e}"
end
```

#### Using the token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessTokenResponse>, Integer, Hash)> token_with_http_info(opts)

```ruby
begin
  # token
  data, status_code, headers = api_instance.token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessTokenResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling Oauth2Api->token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** |  | [optional] |
| **allow_inactive_workspace** | **Boolean** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **client_secret** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **grant_type** | **String** |  | [optional] |
| **redirect_uri** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## token_0

> token_0(workspace_id)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::Oauth2Api.new
workspace_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace UUID

begin
  
  api_instance.token_0(workspace_id)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling Oauth2Api->token_0: #{e}"
end
```

#### Using the token_0_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> token_0_with_http_info(workspace_id)

```ruby
begin
  
  data, status_code, headers = api_instance.token_0_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling Oauth2Api->token_0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace UUID |  |

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

