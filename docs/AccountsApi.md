# LeanixMtmApi::AccountsApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_data_breach_contact**](AccountsApi.md#add_data_breach_contact) | **POST** /accounts/{accountId}/dataBreachContacts | addDataBreachContact |
| [**create_account**](AccountsApi.md#create_account) | **POST** /accounts | createAccount |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /accounts/{id} | deleteAccount |
| [**delete_data_breach_contact**](AccountsApi.md#delete_data_breach_contact) | **DELETE** /accounts/{accountId}/dataBreachContacts | deleteDataBreachContact |
| [**get_account**](AccountsApi.md#get_account) | **GET** /accounts/{id} | getAccount |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /accounts | getAccounts |
| [**get_contracts**](AccountsApi.md#get_contracts) | **GET** /accounts/{id}/contracts | getContracts |
| [**get_data_breach_contacts**](AccountsApi.md#get_data_breach_contacts) | **GET** /accounts/{accountId}/dataBreachContacts | getDataBreachContact |
| [**get_events**](AccountsApi.md#get_events) | **GET** /accounts/{id}/events | getEvents |
| [**get_instances**](AccountsApi.md#get_instances) | **GET** /accounts/{id}/instances | getInstances |
| [**get_settings**](AccountsApi.md#get_settings) | **GET** /accounts/{id}/settings | getSettings |
| [**get_users**](AccountsApi.md#get_users) | **GET** /accounts/{id}/users | getUsers |
| [**get_workspaces**](AccountsApi.md#get_workspaces) | **GET** /accounts/{id}/workspaces | getWorkspaces |
| [**update_account**](AccountsApi.md#update_account) | **PUT** /accounts/{id} | updateAccount |


## add_data_breach_contact

> <AccountResponse> add_data_breach_contact(account_id, body)

addDataBreachContact

Adds a data breach contact to the account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
body = LeanixMtmApi::DataBreachContact.new({account_id: 'account_id_example', email: 'email_example', full_name: 'full_name_example', role: 'role_example'}) # DataBreachContact | 

begin
  # addDataBreachContact
  result = api_instance.add_data_breach_contact(account_id, body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->add_data_breach_contact: #{e}"
end
```

#### Using the add_data_breach_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> add_data_breach_contact_with_http_info(account_id, body)

```ruby
begin
  # addDataBreachContact
  data, status_code, headers = api_instance.add_data_breach_contact_with_http_info(account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->add_data_breach_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **body** | [**DataBreachContact**](DataBreachContact.md) |  |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_account

> <AccountResponse> create_account(body)

createAccount

Create an account. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
body = LeanixMtmApi::Account.new # Account | 

begin
  # createAccount
  result = api_instance.create_account(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->create_account: #{e}"
end
```

#### Using the create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> create_account_with_http_info(body)

```ruby
begin
  # createAccount
  data, status_code, headers = api_instance.create_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Account**](Account.md) |  |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_account

> <AccountResponse> delete_account(id)

deleteAccount

Delete an account. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | Account UUID

begin
  # deleteAccount
  result = api_instance.delete_account(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->delete_account: #{e}"
end
```

#### Using the delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> delete_account_with_http_info(id)

```ruby
begin
  # deleteAccount
  data, status_code, headers = api_instance.delete_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account UUID |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_data_breach_contact

> <AccountResponse> delete_data_breach_contact(account_id)

deleteDataBreachContact

Deletes a data breach contact of the account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # deleteDataBreachContact
  result = api_instance.delete_data_breach_contact(account_id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->delete_data_breach_contact: #{e}"
end
```

#### Using the delete_data_breach_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> delete_data_breach_contact_with_http_info(account_id)

```ruby
begin
  # deleteDataBreachContact
  data, status_code, headers = api_instance.delete_data_breach_contact_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->delete_data_breach_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account

> <AccountResponse> get_account(id)

getAccount

Retrieves a single account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | Workspace UUID

begin
  # getAccount
  result = api_instance.get_account(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> get_account_with_http_info(id)

```ruby
begin
  # getAccount
  data, status_code, headers = api_instance.get_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Workspace UUID |  |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <AccountListResponse> get_accounts(opts)

getAccounts

Retrieves all accounts. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
opts = {
  q: 'q_example', # String | A part of the name to search for
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getAccounts
  result = api_instance.get_accounts(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountListResponse>, Integer, Hash)> get_accounts_with_http_info(opts)

```ruby
begin
  # getAccounts
  data, status_code, headers = api_instance.get_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | A part of the name to search for | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**AccountListResponse**](AccountListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contracts

> <ContractListResponse> get_contracts(id, opts)

getContracts

Retrieves all contracts for the account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | 
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getContracts
  result = api_instance.get_contracts(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_contracts: #{e}"
end
```

#### Using the get_contracts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractListResponse>, Integer, Hash)> get_contracts_with_http_info(id, opts)

```ruby
begin
  # getContracts
  data, status_code, headers = api_instance.get_contracts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_contracts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
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


## get_data_breach_contacts

> <DataBreachContactListResponse> get_data_breach_contacts(account_id)

getDataBreachContact

Returns the list of data breach contacts of the account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
account_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # getDataBreachContact
  result = api_instance.get_data_breach_contacts(account_id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_data_breach_contacts: #{e}"
end
```

#### Using the get_data_breach_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataBreachContactListResponse>, Integer, Hash)> get_data_breach_contacts_with_http_info(account_id)

```ruby
begin
  # getDataBreachContact
  data, status_code, headers = api_instance.get_data_breach_contacts_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataBreachContactListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_data_breach_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**DataBreachContactListResponse**](DataBreachContactListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events

> <EventListResponse> get_events(id, opts)

getEvents

Retrieves all events for an account (date must be ISO 8601 formatted).

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | 
opts = {
  since: 'since_example', # String | The date offset to fetch events from
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 100, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getEvents
  result = api_instance.get_events(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_events: #{e}"
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
  puts "Error when calling AccountsApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **since** | **String** | The date offset to fetch events from | [optional] |
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


## get_instances

> <InstanceListResponse> get_instances(id)

getInstances

Get all instances for this account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | 

begin
  # getInstances
  result = api_instance.get_instances(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_instances: #{e}"
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
  puts "Error when calling AccountsApi->get_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**InstanceListResponse**](InstanceListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_settings

> <SettingListResponse> get_settings(id, opts)

getSettings

Endpoint to list the user specific settings. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | User UUID
opts = {
  type: 'CONFIG' # String | Setting type
}

begin
  # getSettings
  result = api_instance.get_settings(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_settings: #{e}"
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
  puts "Error when calling AccountsApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | User UUID |  |
| **type** | **String** | Setting type | [optional] |

### Return type

[**SettingListResponse**](SettingListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <UserListResponse> get_users(id, opts)

getUsers

Get all users for this account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | 
opts = {
  email: 'email_example', # String | Search by email address (optional)
  q: 'q_example', # String | Search in user name or name (optional)
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (optional)
}

begin
  # getUsers
  result = api_instance.get_users(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserListResponse>, Integer, Hash)> get_users_with_http_info(id, opts)

```ruby
begin
  # getUsers
  data, status_code, headers = api_instance.get_users_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **email** | **String** | Search by email address (optional) | [optional] |
| **q** | **String** | Search in user name or name (optional) | [optional] |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (optional) | [optional] |

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces

> <ContractListResponse> get_workspaces(id)

getWorkspaces

Retrieves all workspaces for the account.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | 

begin
  # getWorkspaces
  result = api_instance.get_workspaces(id)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContractListResponse>, Integer, Hash)> get_workspaces_with_http_info(id)

```ruby
begin
  # getWorkspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContractListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ContractListResponse**](ContractListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account

> <AccountResponse> update_account(id, opts)

updateAccount

Update account info.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::AccountsApi.new
id = 'id_example' # String | Account UUID
opts = {
  body: LeanixMtmApi::Account.new # Account | Account
}

begin
  # updateAccount
  result = api_instance.update_account(id, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResponse>, Integer, Hash)> update_account_with_http_info(id, opts)

```ruby
begin
  # updateAccount
  data, status_code, headers = api_instance.update_account_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling AccountsApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account UUID |  |
| **body** | [**Account**](Account.md) | Account | [optional] |

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

