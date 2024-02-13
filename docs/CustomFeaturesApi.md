# LeanixMtmApi::CustomFeaturesApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_feature**](CustomFeaturesApi.md#create_custom_feature) | **POST** /customFeatures | createCustomFeature |
| [**delete_custom_feature**](CustomFeaturesApi.md#delete_custom_feature) | **DELETE** /customFeatures/{id} | deleteCustomFeature |
| [**get_custom_feature**](CustomFeaturesApi.md#get_custom_feature) | **GET** /customFeatures/{id} | getCustomFeature |
| [**get_custom_features**](CustomFeaturesApi.md#get_custom_features) | **GET** /customFeatures | getCustomFeatures |
| [**update_custom_feature**](CustomFeaturesApi.md#update_custom_feature) | **PUT** /customFeatures/{id} | updateCustomFeature |


## create_custom_feature

> <CustomFeatureResponse> create_custom_feature(body)

createCustomFeature

Endpoint to set a customFeature. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::CustomFeaturesApi.new
body = LeanixMtmApi::CustomFeature.new({status: 'DISABLED'}) # CustomFeature | 

begin
  # createCustomFeature
  result = api_instance.create_custom_feature(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->create_custom_feature: #{e}"
end
```

#### Using the create_custom_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureResponse>, Integer, Hash)> create_custom_feature_with_http_info(body)

```ruby
begin
  # createCustomFeature
  data, status_code, headers = api_instance.create_custom_feature_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->create_custom_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CustomFeature**](CustomFeature.md) |  |  |

### Return type

[**CustomFeatureResponse**](CustomFeatureResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_feature

> <CustomFeatureResponse> delete_custom_feature(id)

deleteCustomFeature

Endpoint to delete a custom feature. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::CustomFeaturesApi.new
id = 'id_example' # String | CustomFeature UUID

begin
  # deleteCustomFeature
  result = api_instance.delete_custom_feature(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->delete_custom_feature: #{e}"
end
```

#### Using the delete_custom_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureResponse>, Integer, Hash)> delete_custom_feature_with_http_info(id)

```ruby
begin
  # deleteCustomFeature
  data, status_code, headers = api_instance.delete_custom_feature_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->delete_custom_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | CustomFeature UUID |  |

### Return type

[**CustomFeatureResponse**](CustomFeatureResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_feature

> <CustomFeatureResponse> get_custom_feature(id)

getCustomFeature

Endpoint to get a custom feature. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::CustomFeaturesApi.new
id = 'id_example' # String | CustomFeature UUID

begin
  # getCustomFeature
  result = api_instance.get_custom_feature(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->get_custom_feature: #{e}"
end
```

#### Using the get_custom_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureResponse>, Integer, Hash)> get_custom_feature_with_http_info(id)

```ruby
begin
  # getCustomFeature
  data, status_code, headers = api_instance.get_custom_feature_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->get_custom_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | CustomFeature UUID |  |

### Return type

[**CustomFeatureResponse**](CustomFeatureResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_features

> <CustomFeatureListResponse> get_custom_features(opts)

getCustomFeatures

Retrieves settings. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::CustomFeaturesApi.new
opts = {
  contract_id: 'contract_id_example', # String | Contract UUID
  workspace_id: 'workspace_id_example' # String | Workspace UUID
}

begin
  # getCustomFeatures
  result = api_instance.get_custom_features(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->get_custom_features: #{e}"
end
```

#### Using the get_custom_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureListResponse>, Integer, Hash)> get_custom_features_with_http_info(opts)

```ruby
begin
  # getCustomFeatures
  data, status_code, headers = api_instance.get_custom_features_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->get_custom_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contract_id** | **String** | Contract UUID | [optional] |
| **workspace_id** | **String** | Workspace UUID | [optional] |

### Return type

[**CustomFeatureListResponse**](CustomFeatureListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_custom_feature

> <CustomFeatureResponse> update_custom_feature(id, body)

updateCustomFeature

Endpoint to update a custom feature. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::CustomFeaturesApi.new
id = 'id_example' # String | CustomFeature UUID
body = LeanixMtmApi::CustomFeature.new({status: 'DISABLED'}) # CustomFeature | 

begin
  # updateCustomFeature
  result = api_instance.update_custom_feature(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->update_custom_feature: #{e}"
end
```

#### Using the update_custom_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeatureResponse>, Integer, Hash)> update_custom_feature_with_http_info(id, body)

```ruby
begin
  # updateCustomFeature
  data, status_code, headers = api_instance.update_custom_feature_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeatureResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling CustomFeaturesApi->update_custom_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | CustomFeature UUID |  |
| **body** | [**CustomFeature**](CustomFeature.md) |  |  |

### Return type

[**CustomFeatureResponse**](CustomFeatureResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

