# LeanixMtmApi::DefaultApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_callback**](DefaultApi.md#authorize_callback) | **POST** /oauth2/authorize |  |
| [**authorize_callback_get**](DefaultApi.md#authorize_callback_get) | **GET** /oauth2/authorize |  |
| [**authorize_callback_saml**](DefaultApi.md#authorize_callback_saml) | **POST** /oauth2/authorizeSaml |  |
| [**authorize_through_saml_get**](DefaultApi.md#authorize_through_saml_get) | **GET** /oauth2/authorizeSaml |  |
| [**create**](DefaultApi.md#create) | **POST** /longlivedBearerTokens | LongLivedBearerToken |
| [**create_impersonation**](DefaultApi.md#create_impersonation) | **POST** /impersonations |  |
| [**get_workspaces**](DefaultApi.md#get_workspaces) | **GET** /impersonations |  |
| [**invalidate**](DefaultApi.md#invalidate) | **POST** /longlivedBearerTokens/{id}/invalidate | LongLivedBearerToken |
| [**list**](DefaultApi.md#list) | **GET** /longlivedBearerTokens | LongLivedBearerToken |
| [**pf_events**](DefaultApi.md#pf_events) | **POST** /hooks |  |
| [**process_graph_ql**](DefaultApi.md#process_graph_ql) | **POST** /graphql | processGraphQL |
| [**update_impersonation**](DefaultApi.md#update_impersonation) | **PUT** /impersonations/{id} |  |


## authorize_callback

> authorize_callback(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
opts = {
  request: 'request_example', # String | 
  state: 'state_example', # String | 
  username: 'username_example', # String | 
  password: 'password_example', # String | 
  workspace: 'workspace_example' # String | 
}

begin
  
  api_instance.authorize_callback(opts)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_callback: #{e}"
end
```

#### Using the authorize_callback_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_callback_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.authorize_callback_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **workspace** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined


## authorize_callback_get

> authorize_callback_get



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new

begin
  
  api_instance.authorize_callback_get
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_callback_get: #{e}"
end
```

#### Using the authorize_callback_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_callback_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.authorize_callback_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_callback_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## authorize_callback_saml

> authorize_callback_saml



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new

begin
  
  api_instance.authorize_callback_saml
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_callback_saml: #{e}"
end
```

#### Using the authorize_callback_saml_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_callback_saml_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.authorize_callback_saml_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_callback_saml_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## authorize_through_saml_get

> authorize_through_saml_get



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new

begin
  
  api_instance.authorize_through_saml_get
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_through_saml_get: #{e}"
end
```

#### Using the authorize_through_saml_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_through_saml_get_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.authorize_through_saml_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->authorize_through_saml_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create

> <LongLivedBearerTokenResponse> create

LongLivedBearerToken

Create a new long-lived bearer token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new

begin
  # LongLivedBearerToken
  result = api_instance.create
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->create: #{e}"
end
```

#### Using the create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LongLivedBearerTokenResponse>, Integer, Hash)> create_with_http_info

```ruby
begin
  # LongLivedBearerToken
  data, status_code, headers = api_instance.create_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LongLivedBearerTokenResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->create_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LongLivedBearerTokenResponse**](LongLivedBearerTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_impersonation

> <ImpersonationResponse> create_impersonation(impersonation)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
impersonation = LeanixMtmApi::Impersonation.new({impersonator: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}), workspace: LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}), login_time: Time.now, language: 'language_example'}) # Impersonation | The impersonation to create; only the workspace/id and reason fields are relevant here.

begin
  
  result = api_instance.create_impersonation(impersonation)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->create_impersonation: #{e}"
end
```

#### Using the create_impersonation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImpersonationResponse>, Integer, Hash)> create_impersonation_with_http_info(impersonation)

```ruby
begin
  
  data, status_code, headers = api_instance.create_impersonation_with_http_info(impersonation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImpersonationResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->create_impersonation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impersonation** | [**Impersonation**](Impersonation.md) | The impersonation to create; only the workspace/id and reason fields are relevant here. |  |

### Return type

[**ImpersonationResponse**](ImpersonationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_workspaces

> <ImpersonationListResponse> get_workspaces(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example', # String | Comma-separated list of sorting (optional)
  email: 'email_example' # String | Email of the impersonator to filter impersonations by
}

begin
  
  result = api_instance.get_workspaces(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImpersonationListResponse>, Integer, Hash)> get_workspaces_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_workspaces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImpersonationListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |
| **email** | **String** | Email of the impersonator to filter impersonations by | [optional] |

### Return type

[**ImpersonationListResponse**](ImpersonationListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invalidate

> <LongLivedBearerTokenResponse> invalidate(id)

LongLivedBearerToken

Invalidate an existing long-lived bearer token.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # LongLivedBearerToken
  result = api_instance.invalidate(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->invalidate: #{e}"
end
```

#### Using the invalidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LongLivedBearerTokenResponse>, Integer, Hash)> invalidate_with_http_info(id)

```ruby
begin
  # LongLivedBearerToken
  data, status_code, headers = api_instance.invalidate_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LongLivedBearerTokenResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->invalidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LongLivedBearerTokenResponse**](LongLivedBearerTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list

> <Array<LongLivedBearerTokenResponse>> list

LongLivedBearerToken

List all long-lived bearer tokens.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new

begin
  # LongLivedBearerToken
  result = api_instance.list
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->list: #{e}"
end
```

#### Using the list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LongLivedBearerTokenResponse>>, Integer, Hash)> list_with_http_info

```ruby
begin
  # LongLivedBearerToken
  data, status_code, headers = api_instance.list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LongLivedBearerTokenResponse>>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LongLivedBearerTokenResponse&gt;**](LongLivedBearerTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pf_events

> pf_events(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
opts = {
  identifier: 'identifier_example' # String | 
}

begin
  
  api_instance.pf_events(opts)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->pf_events: #{e}"
end
```

#### Using the pf_events_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> pf_events_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.pf_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->pf_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## process_graph_ql

> <GraphQLResult> process_graph_ql(request)

processGraphQL

Processes GraphQL requests

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
request = LeanixMtmApi::GraphQLRequest.new({query: 'query_example'}) # GraphQLRequest | 

begin
  # processGraphQL
  result = api_instance.process_graph_ql(request)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->process_graph_ql: #{e}"
end
```

#### Using the process_graph_ql_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GraphQLResult>, Integer, Hash)> process_graph_ql_with_http_info(request)

```ruby
begin
  # processGraphQL
  data, status_code, headers = api_instance.process_graph_ql_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GraphQLResult>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->process_graph_ql_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**GraphQLRequest**](GraphQLRequest.md) |  |  |

### Return type

[**GraphQLResult**](GraphQLResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_impersonation

> <ImpersonationResponse> update_impersonation(id, opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'

api_instance = LeanixMtmApi::DefaultApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the support user impersonation to update.
opts = {
  impersonation: LeanixMtmApi::Impersonation.new({impersonator: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}), workspace: LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}), login_time: Time.now, language: 'language_example'}) # Impersonation | The new impersonation data; only the reason field is relevant here.
}

begin
  
  result = api_instance.update_impersonation(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->update_impersonation: #{e}"
end
```

#### Using the update_impersonation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImpersonationResponse>, Integer, Hash)> update_impersonation_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_impersonation_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImpersonationResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DefaultApi->update_impersonation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the support user impersonation to update. |  |
| **impersonation** | [**Impersonation**](Impersonation.md) | The new impersonation data; only the reason field is relevant here. | [optional] |

### Return type

[**ImpersonationResponse**](ImpersonationResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

