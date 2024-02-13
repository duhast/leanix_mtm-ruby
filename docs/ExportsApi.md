# LeanixMtmApi::ExportsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_export**](ExportsApi.md#get_export) | **GET** /exports/{key} | getExport |


## get_export

> <WorkspaceResponse> get_export(key)

getExport

Retrieves an export

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ExportsApi.new
key = 'key_example' # String | Download key

begin
  # getExport
  result = api_instance.get_export(key)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ExportsApi->get_export: #{e}"
end
```

#### Using the get_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceResponse>, Integer, Hash)> get_export_with_http_info(key)

```ruby
begin
  # getExport
  data, status_code, headers = api_instance.get_export_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ExportsApi->get_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Download key |  |

### Return type

[**WorkspaceResponse**](WorkspaceResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream

