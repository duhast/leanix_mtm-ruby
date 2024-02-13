# LeanixMtmApi::ContractsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contract**](ContractsApi.md#create_contract) | **POST** /contracts | createContract |
| [**delete_contract**](ContractsApi.md#delete_contract) | **DELETE** /contracts/{id} | deleteContract |
| [**get_contract**](ContractsApi.md#get_contract) | **GET** /contracts/{id} | getContract |
| [**get_contracts**](ContractsApi.md#get_contracts) | **GET** /contracts | getContracts |
| [**get_custom_features**](ContractsApi.md#get_custom_features) | **GET** /contracts/{id}/customFeatures | getCustomFeatures |
| [**get_events**](ContractsApi.md#get_events) | **GET** /contracts/{id}/events | getEvents |
| [**get_settings**](ContractsApi.md#get_settings) | **GET** /contracts/{id}/settings | getSettings |
| [**get_workspaces**](ContractsApi.md#get_workspaces) | **GET** /contracts/{id}/workspaces | getWorkspaces |
| [**update_contract**](ContractsApi.md#update_contract) | **PUT** /contracts/{id} | updateContract |


## create_contract

> <ContractResponse> create_contract(opts)

createContract

Add a contract. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
opts = {
  body: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new}) # Contract | contract data
}

begin
  # createContract
  result = api_instance.create_contract(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->create_contract: #{e}"
end
```

#### Using the create_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractResponse>, Integer, Hash)> create_contract_with_http_info(opts)

```ruby
begin
  # createContract
  data, status_code, headers = api_instance.create_contract_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->create_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Contract**](Contract.md) | contract data | [optional] |

### Return type

[**ContractResponse**](ContractResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contract

> <ContractResponse> delete_contract(id)

deleteContract

Delete a contract. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID

begin
  # deleteContract
  result = api_instance.delete_contract(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->delete_contract: #{e}"
end
```

#### Using the delete_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractResponse>, Integer, Hash)> delete_contract_with_http_info(id)

```ruby
begin
  # deleteContract
  data, status_code, headers = api_instance.delete_contract_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->delete_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |

### Return type

[**ContractResponse**](ContractResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contract

> <ContractResponse> get_contract(id)

getContract

Get a contract. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID

begin
  # getContract
  result = api_instance.get_contract(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_contract: #{e}"
end
```

#### Using the get_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractResponse>, Integer, Hash)> get_contract_with_http_info(id)

```ruby
begin
  # getContract
  data, status_code, headers = api_instance.get_contract_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |

### Return type

[**ContractResponse**](ContractResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts

> <ContractListResponse> get_contracts(opts)

getContracts

Retrieves all contracts. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
opts = {
  q: 'q_example', # String | Search for account, type or status
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getContracts
  result = api_instance.get_contracts(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_contracts: #{e}"
end
```

#### Using the get_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractListResponse>, Integer, Hash)> get_contracts_with_http_info(opts)

```ruby
begin
  # getContracts
  data, status_code, headers = api_instance.get_contracts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_contracts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Search for account, type or status | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**ContractListResponse**](ContractListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_features

> <CustomFeatureListResponse> get_custom_features(id)

getCustomFeatures

Endpoint to list the contract specific custom features. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID

begin
  # getCustomFeatures
  result = api_instance.get_custom_features(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_custom_features: #{e}"
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
  puts "Error when calling ContractsApi->get_custom_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |

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

Retrieves all events for the contract. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID
opts = {
  since: 'since_example', # String | time limit, list only newer events (date must be ISO 8601 formatted)
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getEvents
  result = api_instance.get_events(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_events: #{e}"
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
  puts "Error when calling ContractsApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |
| **since** | **String** | time limit, list only newer events (date must be ISO 8601 formatted) | [optional] |
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


## get_settings

> <SettingListResponse> get_settings(id, opts)

getSettings

Endpoint to list the contract specific settings. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID
opts = {
  type: 'CONFIG' # String | Setting type
}

begin
  # getSettings
  result = api_instance.get_settings(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_settings: #{e}"
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
  puts "Error when calling ContractsApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |
| **type** | **String** | Setting type | [optional] |

### Return type

[**SettingListResponse**](SettingListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <WorkspaceListResponse> get_workspaces(id, opts)

getWorkspaces

Get the workspaces of a contract. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID
opts = {
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getWorkspaces
  result = api_instance.get_workspaces(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceListResponse>, Integer, Hash)> get_workspaces_with_http_info(id, opts)

```ruby
begin
  # getWorkspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contract

> <ContractResponse> update_contract(id, body)

updateContract

Update a contract. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ContractsApi.new
id = 'id_example' # String | Contract UUID
body = LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new}) # Contract | 

begin
  # updateContract
  result = api_instance.update_contract(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->update_contract: #{e}"
end
```

#### Using the update_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractResponse>, Integer, Hash)> update_contract_with_http_info(id, body)

```ruby
begin
  # updateContract
  data, status_code, headers = api_instance.update_contract_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ContractsApi->update_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Contract UUID |  |
| **body** | [**Contract**](Contract.md) |  |  |

### Return type

[**ContractResponse**](ContractResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

