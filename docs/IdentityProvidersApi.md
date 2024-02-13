# LeanixMtmApi::IdentityProvidersApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_identity_provider**](IdentityProvidersApi.md#create_identity_provider) | **POST** /identityProviders | createIdentityProvider |
| [**delete_identity_provider**](IdentityProvidersApi.md#delete_identity_provider) | **DELETE** /identityProviders/{id} | deleteIdentityProvider |
| [**get_domains**](IdentityProvidersApi.md#get_domains) | **GET** /identityProviders/{id}/domains | getDomains |
| [**get_events**](IdentityProvidersApi.md#get_events) | **GET** /identityProviders/{id}/events | getEvents |
| [**get_identity_provider**](IdentityProvidersApi.md#get_identity_provider) | **GET** /identityProviders/{id} | getIdentityProvider |
| [**get_identity_providers**](IdentityProvidersApi.md#get_identity_providers) | **GET** /identityProviders | getIdentityProviders |
| [**get_instances**](IdentityProvidersApi.md#get_instances) | **GET** /identityProviders/{id}/instances | getInstances |
| [**get_metadata**](IdentityProvidersApi.md#get_metadata) | **GET** /identityProviders/{id}/metadata.xml | getMetadata |
| [**update_identity_provider**](IdentityProvidersApi.md#update_identity_provider) | **PUT** /identityProviders/{id} | updateIdentityProvider |


## create_identity_provider

> <IdentityProviderResponse> create_identity_provider(body)

createIdentityProvider

Creates an identity provider. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
body = LeanixMtmApi::IdentityProvider.new({identity_management: 'FULLY_EXTERNAL'}) # IdentityProvider | 

begin
  # createIdentityProvider
  result = api_instance.create_identity_provider(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->create_identity_provider: #{e}"
end
```

#### Using the create_identity_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityProviderResponse>, Integer, Hash)> create_identity_provider_with_http_info(body)

```ruby
begin
  # createIdentityProvider
  data, status_code, headers = api_instance.create_identity_provider_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityProviderResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->create_identity_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**IdentityProvider**](IdentityProvider.md) |  |  |

### Return type

[**IdentityProviderResponse**](IdentityProviderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_identity_provider

> <IdentityProviderResponse> delete_identity_provider(id)

deleteIdentityProvider

Deletes an identity provider. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | Identity provider UUID

begin
  # deleteIdentityProvider
  result = api_instance.delete_identity_provider(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->delete_identity_provider: #{e}"
end
```

#### Using the delete_identity_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityProviderResponse>, Integer, Hash)> delete_identity_provider_with_http_info(id)

```ruby
begin
  # deleteIdentityProvider
  data, status_code, headers = api_instance.delete_identity_provider_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityProviderResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->delete_identity_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identity provider UUID |  |

### Return type

[**IdentityProviderResponse**](IdentityProviderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domains

> <DomainListResponse> get_domains(id)

getDomains

Retrieves all domains for an identity provider. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | Identity provider UUID

begin
  # getDomains
  result = api_instance.get_domains(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_domains: #{e}"
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
  puts "Error when calling IdentityProvidersApi->get_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identity provider UUID |  |

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

Retrieves all events for an identity provider (send date as 2013-10-05T00%3A21%3A54.000%2B07%3A00). Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | Identity Provider UUID
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
  puts "Error when calling IdentityProvidersApi->get_events: #{e}"
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
  puts "Error when calling IdentityProvidersApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identity Provider UUID |  |
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


## get_identity_provider

> <IdentityProviderResponse> get_identity_provider(id)

getIdentityProvider

Retrieves a specific entity provider. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | 

begin
  # getIdentityProvider
  result = api_instance.get_identity_provider(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_identity_provider: #{e}"
end
```

#### Using the get_identity_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityProviderResponse>, Integer, Hash)> get_identity_provider_with_http_info(id)

```ruby
begin
  # getIdentityProvider
  data, status_code, headers = api_instance.get_identity_provider_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityProviderResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_identity_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**IdentityProviderResponse**](IdentityProviderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_identity_providers

> <IdentityProviderListResponse> get_identity_providers(opts)

getIdentityProviders

Retrieves all identity providers. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
opts = {
  q: 'q_example', # String | A part of the name or EntityID to search for
  entity_id: 'entity_id_example', # String | EntityID of the IDP (is unique over all IdPs)
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getIdentityProviders
  result = api_instance.get_identity_providers(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_identity_providers: #{e}"
end
```

#### Using the get_identity_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityProviderListResponse>, Integer, Hash)> get_identity_providers_with_http_info(opts)

```ruby
begin
  # getIdentityProviders
  data, status_code, headers = api_instance.get_identity_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityProviderListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_identity_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | A part of the name or EntityID to search for | [optional] |
| **entity_id** | **String** | EntityID of the IDP (is unique over all IdPs) | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**IdentityProviderListResponse**](IdentityProviderListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instances

> <InstanceListResponse> get_instances(id)

getInstances

Retrieves all instances for an identity provider. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | Identity provider UUID

begin
  # getInstances
  result = api_instance.get_instances(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_instances: #{e}"
end
```

#### Using the get_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstanceListResponse>, Integer, Hash)> get_instances_with_http_info(id)

```ruby
begin
  # getInstances
  data, status_code, headers = api_instance.get_instances_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstanceListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identity provider UUID |  |

### Return type

[**InstanceListResponse**](InstanceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metadata

> String get_metadata(id)

getMetadata

Download metadata of an identity provider

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | Identity provider UUID

begin
  # getMetadata
  result = api_instance.get_metadata(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_metadata: #{e}"
end
```

#### Using the get_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_metadata_with_http_info(id)

```ruby
begin
  # getMetadata
  data, status_code, headers = api_instance.get_metadata_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->get_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identity provider UUID |  |

### Return type

**String**

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/xml


## update_identity_provider

> <IdentityProviderResponse> update_identity_provider(id, body)

updateIdentityProvider

Updates an identity provider. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdentityProvidersApi.new
id = 'id_example' # String | Identity provider UUID
body = LeanixMtmApi::IdentityProvider.new({identity_management: 'FULLY_EXTERNAL'}) # IdentityProvider | 

begin
  # updateIdentityProvider
  result = api_instance.update_identity_provider(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->update_identity_provider: #{e}"
end
```

#### Using the update_identity_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityProviderResponse>, Integer, Hash)> update_identity_provider_with_http_info(id, body)

```ruby
begin
  # updateIdentityProvider
  data, status_code, headers = api_instance.update_identity_provider_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityProviderResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdentityProvidersApi->update_identity_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identity provider UUID |  |
| **body** | [**IdentityProvider**](IdentityProvider.md) |  |  |

### Return type

[**IdentityProviderResponse**](IdentityProviderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

