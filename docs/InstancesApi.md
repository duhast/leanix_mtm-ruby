# LeanixMtmApi::InstancesApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_instance**](InstancesApi.md#create_instance) | **POST** /instances | createInstance |
| [**delete_instance**](InstancesApi.md#delete_instance) | **DELETE** /instances/{id} | deleteInstance |
| [**get_domains**](InstancesApi.md#get_domains) | **GET** /instances/{id}/domains | getDomains |
| [**get_events**](InstancesApi.md#get_events) | **GET** /instances/{id}/events | getEvents |
| [**get_instance**](InstancesApi.md#get_instance) | **GET** /instances/{id} | getInstance |
| [**get_instances**](InstancesApi.md#get_instances) | **GET** /instances | getInstances |
| [**get_instances_by_workspace**](InstancesApi.md#get_instances_by_workspace) | **POST** /instances/findByWorkspaceIds |  |
| [**get_preferred_instance**](InstancesApi.md#get_preferred_instance) | **GET** /instances/preferred |  |
| [**get_workspaces**](InstancesApi.md#get_workspaces) | **GET** /instances/{id}/workspaces | getWorkspaces |
| [**switch_default_instance**](InstancesApi.md#switch_default_instance) | **POST** /instances/{id}/setToDefault |  |
| [**update_instance**](InstancesApi.md#update_instance) | **PUT** /instances/{id} | updateInstance |


## create_instance

> <InstanceResponse> create_instance(body)

createInstance

Creates an instance. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
body = LeanixMtmApi::Instance.new({application: LeanixMtmApi::Application.new, resource_server_key: 'resource_server_key_example', resource_server_secret: 'resource_server_secret_example'}) # Instance | 

begin
  # createInstance
  result = api_instance.create_instance(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->create_instance: #{e}"
end
```

#### Using the create_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceResponse>, Integer, Hash)> create_instance_with_http_info(body)

```ruby
begin
  # createInstance
  data, status_code, headers = api_instance.create_instance_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->create_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Instance**](Instance.md) |  |  |

### Return type

[**InstanceResponse**](InstanceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_instance

> <InstanceResponse> delete_instance(id)

deleteInstance

Deletes an instance. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = 'id_example' # String | Instance UUID

begin
  # deleteInstance
  result = api_instance.delete_instance(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->delete_instance: #{e}"
end
```

#### Using the delete_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceResponse>, Integer, Hash)> delete_instance_with_http_info(id)

```ruby
begin
  # deleteInstance
  data, status_code, headers = api_instance.delete_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->delete_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instance UUID |  |

### Return type

[**InstanceResponse**](InstanceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domains

> <DomainListResponse> get_domains(id)

getDomains

Retrieves all domains for an instance. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = 'id_example' # String | Instance UUID

begin
  # getDomains
  result = api_instance.get_domains(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_domains: #{e}"
end
```

#### Using the get_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainListResponse>, Integer, Hash)> get_domains_with_http_info(id)

```ruby
begin
  # getDomains
  data, status_code, headers = api_instance.get_domains_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instance UUID |  |

### Return type

[**DomainListResponse**](DomainListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <EventListResponse> get_events(id, opts)

getEvents

Retrieves all events for an instance (send date as 2013-10-05T00%3A21%3A54.000%2B07%3A00). Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = 'id_example' # String | Instance UUID
opts = {
  since: 'since_example', # String | ISO 8601 date
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getEvents
  result = api_instance.get_events(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_events: #{e}"
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
  puts "Error when calling InstancesApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instance UUID |  |
| **since** | **String** | ISO 8601 date | [optional] |
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


## get_instance

> <InstanceResponse> get_instance(id)

getInstance

Retrieves a specific instance. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = 'id_example' # String | 

begin
  # getInstance
  result = api_instance.get_instance(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_instance: #{e}"
end
```

#### Using the get_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceResponse>, Integer, Hash)> get_instance_with_http_info(id)

```ruby
begin
  # getInstance
  data, status_code, headers = api_instance.get_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**InstanceResponse**](InstanceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instances

> <InstanceListResponse> get_instances(opts)

getInstances

Retrieves all instances. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
opts = {
  q: 'q_example', # String | A part of the name or URL to search for
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example', # String | Comma-separated list of sorting (optional)
  application: 'application_example', # String | Comma separated list of application names
  url: 'url_example' # String | URL
}

begin
  # getInstances
  result = api_instance.get_instances(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_instances: #{e}"
end
```

#### Using the get_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceListResponse>, Integer, Hash)> get_instances_with_http_info(opts)

```ruby
begin
  # getInstances
  data, status_code, headers = api_instance.get_instances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | A part of the name or URL to search for | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |
| **application** | **String** | Comma separated list of application names | [optional] |
| **url** | **String** | URL | [optional] |

### Return type

[**InstanceListResponse**](InstanceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instances_by_workspace

> <InstanceDtoListResponse> get_instances_by_workspace



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new

begin
  
  result = api_instance.get_instances_by_workspace
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_instances_by_workspace: #{e}"
end
```

#### Using the get_instances_by_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceDtoListResponse>, Integer, Hash)> get_instances_by_workspace_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_instances_by_workspace_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceDtoListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_instances_by_workspace_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InstanceDtoListResponse**](InstanceDtoListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_preferred_instance

> <InstanceResponse> get_preferred_instance(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
opts = {
  workspace_type: 'LIVE', # String | 
  account_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  
  result = api_instance.get_preferred_instance(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_preferred_instance: #{e}"
end
```

#### Using the get_preferred_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceResponse>, Integer, Hash)> get_preferred_instance_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_preferred_instance_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_preferred_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_type** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**InstanceResponse**](InstanceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <WorkspaceListResponse> get_workspaces(id)

getWorkspaces

Retrieves all workspaces for an instance. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = 'id_example' # String | Instance UUID

begin
  # getWorkspaces
  result = api_instance.get_workspaces(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceListResponse>, Integer, Hash)> get_workspaces_with_http_info(id)

```ruby
begin
  # getWorkspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instance UUID |  |

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## switch_default_instance

> switch_default_instance(id)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  api_instance.switch_default_instance(id)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->switch_default_instance: #{e}"
end
```

#### Using the switch_default_instance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> switch_default_instance_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.switch_default_instance_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->switch_default_instance_with_http_info: #{e}"
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


## update_instance

> <InstanceResponse> update_instance(id, body)

updateInstance

Updates an instance. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::InstancesApi.new
id = 'id_example' # String | Instance UUID
body = LeanixMtmApi::Instance.new({application: LeanixMtmApi::Application.new, resource_server_key: 'resource_server_key_example', resource_server_secret: 'resource_server_secret_example'}) # Instance | 

begin
  # updateInstance
  result = api_instance.update_instance(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->update_instance: #{e}"
end
```

#### Using the update_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceResponse>, Integer, Hash)> update_instance_with_http_info(id, body)

```ruby
begin
  # updateInstance
  data, status_code, headers = api_instance.update_instance_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling InstancesApi->update_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instance UUID |  |
| **body** | [**Instance**](Instance.md) |  |  |

### Return type

[**InstanceResponse**](InstanceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

