# LeanixMtmApi::EventsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event**](EventsApi.md#create_event) | **POST** /events | createEvent |
| [**get_event**](EventsApi.md#get_event) | **GET** /events/{id} | getEvent |
| [**get_events**](EventsApi.md#get_events) | **GET** /events | getEvents |
| [**get_raw**](EventsApi.md#get_raw) | **GET** /events/raw |  |
| [**update_event**](EventsApi.md#update_event) | **PUT** /events/{id} | updateEvent |


## create_event

> <EventResponse> create_event(body)

createEvent

Creates an event. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::EventsApi.new
body = LeanixMtmApi::Event.new({type: 'TEST_EVENT', actor: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'})}) # Event | 

begin
  # createEvent
  result = api_instance.create_event(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> create_event_with_http_info(body)

```ruby
begin
  # createEvent
  data, status_code, headers = api_instance.create_event_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Event**](Event.md) |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_event

> <EventResponse> get_event(id)

getEvent

Retrieves one event. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::EventsApi.new
id = 'id_example' # String | Event UUID

begin
  # getEvent
  result = api_instance.get_event(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> get_event_with_http_info(id)

```ruby
begin
  # getEvent
  data, status_code, headers = api_instance.get_event_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event UUID |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <EventListResponse> get_events(opts)

getEvents

Retrieves all events for the requesting user. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::EventsApi.new
opts = {
  since: 'since_example', # String | 
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getEvents
  result = api_instance.get_events(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListResponse>, Integer, Hash)> get_events_with_http_info(opts)

```ruby
begin
  # getEvents
  data, status_code, headers = api_instance.get_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **String** |  | [optional] |
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


## get_raw

> Array&lt;Array&lt;Object&gt;&gt; get_raw(opts)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::EventsApi.new
opts = {
  type: 'type_example', # String | 
  workspace_id: 'workspace_id_example', # String | 
  user_id: 'user_id_example' # String | 
}

begin
  
  result = api_instance.get_raw(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->get_raw: #{e}"
end
```

#### Using the get_raw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Array&lt;Object&gt;&gt;, Integer, Hash)> get_raw_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_raw_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Array&lt;Object&gt;&gt;
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->get_raw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **workspace_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

### Return type

**Array&lt;Array&lt;Object&gt;&gt;**

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_event

> <EventResponse> update_event(id, body)

updateEvent

Updates an event, only status can be updated. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::EventsApi.new
id = 'id_example' # String | Event UUID
body = LeanixMtmApi::Event.new({type: 'TEST_EVENT', actor: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'})}) # Event | 

begin
  # updateEvent
  result = api_instance.update_event(id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->update_event: #{e}"
end
```

#### Using the update_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> update_event_with_http_info(id, body)

```ruby
begin
  # updateEvent
  data, status_code, headers = api_instance.update_event_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling EventsApi->update_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event UUID |  |
| **body** | [**Event**](Event.md) |  |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

