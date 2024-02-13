# LeanixMtmApi::ApplicationsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**access_feature**](ApplicationsApi.md#access_feature) | **POST** /applications/{name}/editions/{id}/features/{featureId} | accessFeature |
| [**get_application**](ApplicationsApi.md#get_application) | **GET** /applications/{name} | getApplication |
| [**get_applications**](ApplicationsApi.md#get_applications) | **GET** /applications | getApplications |
| [**get_edition**](ApplicationsApi.md#get_edition) | **GET** /applications/{name}/editions/{id} | getEditions |
| [**get_editions**](ApplicationsApi.md#get_editions) | **GET** /applications/{name}/editions | getEditions |
| [**get_feature**](ApplicationsApi.md#get_feature) | **GET** /applications/{name}/editions/{id}/features/{featureId} | getFeature |
| [**get_features**](ApplicationsApi.md#get_features) | **GET** /applications/{name}/features | getFeatures |


## access_feature

> <FeatureAccessResponse> access_feature(name, id, feature_id, body)

accessFeature

Checks the use permission of a feature

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new
name = 'name_example' # String | 
id = 'id_example' # String | 
feature_id = 'feature_id_example' # String | 
body = LeanixMtmApi::FeatureAccessRequest.new # FeatureAccessRequest | 

begin
  # accessFeature
  result = api_instance.access_feature(name, id, feature_id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->access_feature: #{e}"
end
```

#### Using the access_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureAccessResponse>, Integer, Hash)> access_feature_with_http_info(name, id, feature_id, body)

```ruby
begin
  # accessFeature
  data, status_code, headers = api_instance.access_feature_with_http_info(name, id, feature_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureAccessResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->access_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **id** | **String** |  |  |
| **feature_id** | **String** |  |  |
| **body** | [**FeatureAccessRequest**](FeatureAccessRequest.md) |  |  |

### Return type

[**FeatureAccessResponse**](FeatureAccessResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_application

> <ApplicationResponse> get_application(name)

getApplication

Retrieve specific application by name. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new
name = 'name_example' # String | application name, a const like mtm

begin
  # getApplication
  result = api_instance.get_application(name)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_application: #{e}"
end
```

#### Using the get_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResponse>, Integer, Hash)> get_application_with_http_info(name)

```ruby
begin
  # getApplication
  data, status_code, headers = api_instance.get_application_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | application name, a const like mtm |  |

### Return type

[**ApplicationResponse**](ApplicationResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applications

> <ApplicationListResponse> get_applications

getApplications

Retrieves all applications. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new

begin
  # getApplications
  result = api_instance.get_applications
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_applications: #{e}"
end
```

#### Using the get_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationListResponse>, Integer, Hash)> get_applications_with_http_info

```ruby
begin
  # getApplications
  data, status_code, headers = api_instance.get_applications_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_applications_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApplicationListResponse**](ApplicationListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edition

> <FeatureBundleResponse> get_edition(name, id)

getEditions

Retrieves an edition

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new
name = 'name_example' # String | 
id = 'id_example' # String | 

begin
  # getEditions
  result = api_instance.get_edition(name, id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_edition: #{e}"
end
```

#### Using the get_edition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureBundleResponse>, Integer, Hash)> get_edition_with_http_info(name, id)

```ruby
begin
  # getEditions
  data, status_code, headers = api_instance.get_edition_with_http_info(name, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureBundleResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_edition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**FeatureBundleResponse**](FeatureBundleResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_editions

> <FeatureBundleListResponse> get_editions(name, opts)

getEditions

Retrieves all editions. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new
name = 'name_example' # String | 
opts = {
  without_legacy_editions: true, # Boolean | 
  q: 'q_example' # String | 
}

begin
  # getEditions
  result = api_instance.get_editions(name, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_editions: #{e}"
end
```

#### Using the get_editions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureBundleListResponse>, Integer, Hash)> get_editions_with_http_info(name, opts)

```ruby
begin
  # getEditions
  data, status_code, headers = api_instance.get_editions_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureBundleListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_editions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **without_legacy_editions** | **Boolean** |  | [optional] |
| **q** | **String** |  | [optional] |

### Return type

[**FeatureBundleListResponse**](FeatureBundleListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature

> <FeatureResponse> get_feature(name, id, feature_id)

getFeature

Retrieves a feature

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new
name = 'name_example' # String | 
id = 'id_example' # String | 
feature_id = 'feature_id_example' # String | 

begin
  # getFeature
  result = api_instance.get_feature(name, id, feature_id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_feature: #{e}"
end
```

#### Using the get_feature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureResponse>, Integer, Hash)> get_feature_with_http_info(name, id, feature_id)

```ruby
begin
  # getFeature
  data, status_code, headers = api_instance.get_feature_with_http_info(name, id, feature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_feature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **id** | **String** |  |  |
| **feature_id** | **String** |  |  |

### Return type

[**FeatureResponse**](FeatureResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_features

> <FeatureListResponse> get_features(name, opts)

getFeatures

Retrieves all possible features

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::ApplicationsApi.new
name = 'name_example' # String | 
opts = {
  q: 'q_example' # String | 
}

begin
  # getFeatures
  result = api_instance.get_features(name, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_features: #{e}"
end
```

#### Using the get_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureListResponse>, Integer, Hash)> get_features_with_http_info(name, opts)

```ruby
begin
  # getFeatures
  data, status_code, headers = api_instance.get_features_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling ApplicationsApi->get_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **q** | **String** |  | [optional] |

### Return type

[**FeatureListResponse**](FeatureListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

