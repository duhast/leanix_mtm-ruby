# LeanixMtmApi::DomainsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_domain**](DomainsApi.md#delete_domain) | **DELETE** /domains/{fqdn} | deleteDomain |
| [**get_domain**](DomainsApi.md#get_domain) | **GET** /domains/{id} | getDomain |
| [**get_domains**](DomainsApi.md#get_domains) | **GET** /domains | getDomains |
| [**get_workspaces**](DomainsApi.md#get_workspaces) | **GET** /domains/{id}/workspaces | getWorkspaces |
| [**upsert_domain**](DomainsApi.md#upsert_domain) | **PUT** /domains | upsertDomain |


## delete_domain

> <IdentityProviderResponse> delete_domain(fqdn)

deleteDomain

Deletes a domain and the respective CNAME. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::DomainsApi.new
fqdn = 'fqdn_example' # String | Customer fqdn

begin
  # deleteDomain
  result = api_instance.delete_domain(fqdn)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->delete_domain: #{e}"
end
```

#### Using the delete_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityProviderResponse>, Integer, Hash)> delete_domain_with_http_info(fqdn)

```ruby
begin
  # deleteDomain
  data, status_code, headers = api_instance.delete_domain_with_http_info(fqdn)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityProviderResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->delete_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fqdn** | **String** | Customer fqdn |  |

### Return type

[**IdentityProviderResponse**](IdentityProviderResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain

> get_domain(id)

getDomain

Retrieves a specific domain. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::DomainsApi.new
id = 'id_example' # String | 

begin
  # getDomain
  api_instance.get_domain(id)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->get_domain: #{e}"
end
```

#### Using the get_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_domain_with_http_info(id)

```ruby
begin
  # getDomain
  data, status_code, headers = api_instance.get_domain_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->get_domain_with_http_info: #{e}"
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


## get_domains

> <DomainListResponse> get_domains(opts)

getDomains

Retrieves all domains. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::DomainsApi.new
opts = {
  q: 'q_example', # String | A part of the FQDN to search for
  fqdn: 'fqdn_example', # String | FQDN of the IDP (is unique over all domains)
  instance: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Current workspace's instance ID
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getDomains
  result = api_instance.get_domains(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->get_domains: #{e}"
end
```

#### Using the get_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainListResponse>, Integer, Hash)> get_domains_with_http_info(opts)

```ruby
begin
  # getDomains
  data, status_code, headers = api_instance.get_domains_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->get_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | A part of the FQDN to search for | [optional] |
| **fqdn** | **String** | FQDN of the IDP (is unique over all domains) | [optional] |
| **instance** | **String** | Current workspace&#39;s instance ID | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**DomainListResponse**](DomainListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <WorkspaceListResponse> get_workspaces(id)

getWorkspaces

Retrieves all workspaces for a domain. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::DomainsApi.new
id = 'id_example' # String | Domain UUID

begin
  # getWorkspaces
  result = api_instance.get_workspaces(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->get_workspaces: #{e}"
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
  puts "Error when calling DomainsApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Domain UUID |  |

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upsert_domain

> <DomainResponse> upsert_domain(body)

upsertDomain

Creates or updates a domain and the respective CNAME. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::DomainsApi.new
body = LeanixMtmApi::DomainDTO.new({instance_fqdn: 'instance_fqdn_example'}) # DomainDTO | 

begin
  # upsertDomain
  result = api_instance.upsert_domain(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->upsert_domain: #{e}"
end
```

#### Using the upsert_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainResponse>, Integer, Hash)> upsert_domain_with_http_info(body)

```ruby
begin
  # upsertDomain
  data, status_code, headers = api_instance.upsert_domain_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling DomainsApi->upsert_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainDTO**](DomainDTO.md) |  |  |

### Return type

[**DomainResponse**](DomainResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

