# LeanixMtmApi::IdmApi

All URIs are relative to */services/mtm/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate**](IdmApi.md#activate) | **POST** /idm/activate | activate |
| [**authenticate**](IdmApi.md#authenticate) | **POST** /idm/authenticate | authenticate |
| [**check_ip**](IdmApi.md#check_ip) | **POST** /idm/checkIp |  |
| [**invite**](IdmApi.md#invite) | **POST** /idm/invite | invite |
| [**login**](IdmApi.md#login) | **POST** /idm/login | login |
| [**login_practitioner**](IdmApi.md#login_practitioner) | **POST** /idm/practitioner |  |
| [**logout**](IdmApi.md#logout) | **POST** /idm/logout | logout |
| [**reset_password**](IdmApi.md#reset_password) | **POST** /idm/reset-password | resetPassword |
| [**review**](IdmApi.md#review) | **POST** /idm/review | review |
| [**set_new_password**](IdmApi.md#set_new_password) | **POST** /idm/set-new-password |  |
| [**set_password**](IdmApi.md#set_password) | **POST** /idm/set-password | setPassword |
| [**switch_permission_role**](IdmApi.md#switch_permission_role) | **POST** /idm/switchPermissionRole |  |


## activate

> <UserResponse> activate(body)

activate

User self activation

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Activation.new({first_name: 'first_name_example', last_name: 'last_name_example'}) # Activation | 

begin
  # activate
  result = api_instance.activate(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->activate: #{e}"
end
```

#### Using the activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> activate_with_http_info(body)

```ruby
begin
  # activate
  data, status_code, headers = api_instance.activate_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Activation**](Activation.md) |  |  |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authenticate

> <UserResponse> authenticate(body)

authenticate

Endpoint to check user credentials (netId + password) for system users. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Credentials.new # Credentials | 

begin
  # authenticate
  result = api_instance.authenticate(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->authenticate: #{e}"
end
```

#### Using the authenticate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> authenticate_with_http_info(body)

```ruby
begin
  # authenticate
  data, status_code, headers = api_instance.authenticate_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->authenticate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Credentials**](Credentials.md) |  |  |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_ip

> check_ip



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new

begin
  
  api_instance.check_ip
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->check_ip: #{e}"
end
```

#### Using the check_ip_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> check_ip_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.check_ip_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->check_ip_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## invite

> <UserResponse> invite(body, opts)

invite

Invite a user to a workspace

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Invitation.new({host: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}), user: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'}), workspace: LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}), permission: LeanixMtmApi::Permission.new({user: , workspace: LeanixMtmApi::Workspace.new({contract: LeanixMtmApi::Contract.new({type: 'REGULAR', status: 'ACTIVE', application: LeanixMtmApi::Application.new})}), role: 'ADMIN', status: 'NOTINVITED'})}) # Invitation | 
opts = {
  silent: true # Boolean | Enables silent mode. No emails are sent out then. (optional)
}

begin
  # invite
  result = api_instance.invite(body, opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->invite: #{e}"
end
```

#### Using the invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> invite_with_http_info(body, opts)

```ruby
begin
  # invite
  data, status_code, headers = api_instance.invite_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Invitation**](Invitation.md) |  |  |
| **silent** | **Boolean** | Enables silent mode. No emails are sent out then. (optional) | [optional][default to false] |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## login

> <LoginResponse> login(body)

login

Notifies MTM of a login at a remote workspace. Can be called by systems only. Restricted to LeanIX internal use only.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Login.new({user: LeanixMtmApi::User.new({account: LeanixMtmApi::Account.new, role: 'SUPERADMIN', status: 'ACTIVE'})}) # Login | 

begin
  # login
  result = api_instance.login(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginResponse>, Integer, Hash)> login_with_http_info(body)

```ruby
begin
  # login
  data, status_code, headers = api_instance.login_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Login**](Login.md) |  |  |

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## login_practitioner

> login_practitioner



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new

begin
  
  api_instance.login_practitioner
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->login_practitioner: #{e}"
end
```

#### Using the login_practitioner_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> login_practitioner_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.login_practitioner_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->login_practitioner_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## logout

> <BasicResponse> logout(opts)

logout

Notifies MTM of a logout at a remote workspace. Invalidates the access token used for the request.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
opts = {
  authorization: 'authorization_example' # String | 
}

begin
  # logout
  result = api_instance.logout(opts)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasicResponse>, Integer, Hash)> logout_with_http_info(opts)

```ruby
begin
  # logout
  data, status_code, headers = api_instance.logout_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasicResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->logout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** |  | [optional] |

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_password

> <CredentialsResponse> reset_password(body)

resetPassword

Endpoint to start the reset the password process, can only be accessed by systems.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Credentials.new # Credentials | 

begin
  # resetPassword
  result = api_instance.reset_password(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->reset_password: #{e}"
end
```

#### Using the reset_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredentialsResponse>, Integer, Hash)> reset_password_with_http_info(body)

```ruby
begin
  # resetPassword
  data, status_code, headers = api_instance.reset_password_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredentialsResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->reset_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Credentials**](Credentials.md) |  |  |

### Return type

[**CredentialsResponse**](CredentialsResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## review

> <PermissionListResponse> review(body)

review

Confirm or deny an invitation

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Review.new({status: 'NOTINVITED'}) # Review | 

begin
  # review
  result = api_instance.review(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->review: #{e}"
end
```

#### Using the review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionListResponse>, Integer, Hash)> review_with_http_info(body)

```ruby
begin
  # review
  data, status_code, headers = api_instance.review_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionListResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Review**](Review.md) |  |  |

### Return type

[**PermissionListResponse**](PermissionListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_new_password

> set_new_password



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new

begin
  
  api_instance.set_new_password
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->set_new_password: #{e}"
end
```

#### Using the set_new_password_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_new_password_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.set_new_password_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->set_new_password_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_password

> <UserResponse> set_password(body)

setPassword

Endpoint to finish the reset the password process.

### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::Credentials.new # Credentials | 

begin
  # setPassword
  result = api_instance.set_password(body)
  p result
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->set_password: #{e}"
end
```

#### Using the set_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserResponse>, Integer, Hash)> set_password_with_http_info(body)

```ruby
begin
  # setPassword
  data, status_code, headers = api_instance.set_password_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserResponse>
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->set_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Credentials**](Credentials.md) |  |  |

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## switch_permission_role

> switch_permission_role(body)



### Examples

```ruby
require 'time'
require 'leanix_mtm_api'
# setup authorization
LeanixMtmApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixMtmApi::IdmApi.new
body = LeanixMtmApi::TransientPermissionPayload.new # TransientPermissionPayload | 

begin
  
  api_instance.switch_permission_role(body)
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->switch_permission_role: #{e}"
end
```

#### Using the switch_permission_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> switch_permission_role_with_http_info(body)

```ruby
begin
  
  data, status_code, headers = api_instance.switch_permission_role_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue LeanixMtmApi::ApiError => e
  puts "Error when calling IdmApi->switch_permission_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TransientPermissionPayload**](TransientPermissionPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

