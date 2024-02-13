# LeanixMtmApi::CNAMEInformationApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_if_cname_exists**](CNAMEInformationApi.md#check_if_cname_exists) | **GET** /cnames | checkIfCnameExists |


## check_if_cname_exists

> Boolean check_if_cname_exists(opts)

checkIfCnameExists

check if the provided CNAME exists

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::CNAMEInformationApi.new
opts = {
  name: 'name_example' # String | 
}

begin
  # checkIfCnameExists
  result = api_instance.check_if_cname_exists(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CNAMEInformationApi->check_if_cname_exists: #{e}"
end
```

#### Using the check_if_cname_exists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> check_if_cname_exists_with_http_info(opts)

```ruby
begin
  # checkIfCnameExists
  data, status_code, headers = api_instance.check_if_cname_exists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CNAMEInformationApi->check_if_cname_exists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |

### Return type

**Boolean**

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

