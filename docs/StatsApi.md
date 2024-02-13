# LeanixMtmApi::StatsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_stats**](StatsApi.md#get_stats) | **GET** /stats | getStats |


## get_stats

> <StatsListResponse> get_stats

getStats

Returns the mtm basic stats. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::StatsApi.new

begin
  # getStats
  result = api_instance.get_stats
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling StatsApi->get_stats: #{e}"
end
```

#### Using the get_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatsListResponse>, Integer, Hash)> get_stats_with_http_info

```ruby
begin
  # getStats
  data, status_code, headers = api_instance.get_stats_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatsListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling StatsApi->get_stats_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StatsListResponse**](StatsListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

