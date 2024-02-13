=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module LeanixMtmApi
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # createOrUpdateUserSegment
    # Create or update the segment of a user
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [UserSegmentDTO]
    def create_or_update(id, opts = {})
      data, _status_code, _headers = create_or_update_with_http_info(id, opts)
      data
    end

    # createOrUpdateUserSegment
    # Create or update the segment of a user
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegmentDTO, Integer, Hash)>] UserSegmentDTO data, response status code and response headers
    def create_or_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_or_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.create_or_update"
      end
      # resource path
      local_var_path = '/users/{id}/segment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserSegmentDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.create_or_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_or_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # createUser
    # Create a user
    # @param body [User] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def create_user(body, opts = {})
      data, _status_code, _headers = create_user_with_http_info(body, opts)
      data
    end

    # createUser
    # Create a user
    # @param body [User] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_user_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.create_user"
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # createUserPassword
    # Create a password for a user. Restricted to LeanIX internal use only.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def create_user_password(id, opts = {})
      data, _status_code, _headers = create_user_password_with_http_info(id, opts)
      data
    end

    # createUserPassword
    # Create a password for a user. Restricted to LeanIX internal use only.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def create_user_password_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user_password ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.create_user_password"
      end
      # resource path
      local_var_path = '/users/{id}/password'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.create_user_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getUserSegment
    # Get the segment of a user
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [UserSegmentDTO]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # getUserSegment
    # Get the segment of a user
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSegmentDTO, Integer, Hash)>] UserSegmentDTO data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get"
      end
      # resource path
      local_var_path = '/users/{id}/segment'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserSegmentDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getEvents
    # Retrieves all events for an user (date must be ISO 8601 formatted)
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :since 
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 100, max 100) (default to 100)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [EventListResponse]
    def get_events(id, opts = {})
      data, _status_code, _headers = get_events_with_http_info(id, opts)
      data
    end

    # getEvents
    # Retrieves all events for an user (date must be ISO 8601 formatted)
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :since 
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 100, max 100) (default to 100)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [Array<(EventListResponse, Integer, Hash)>] EventListResponse data, response status code and response headers
    def get_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_events ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_events"
      end
      # resource path
      local_var_path = '/users/{id}/events'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getPermissions
    # Endpoint to list the user permissions.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_potential_permissions Include potential permissions, i.e. permissions that do not exist yet but would be created on first login attempt. (optional) (default to false)
    # @option opts [Boolean] :valid_only Show only active permissions. (optional) (default to false)
    # @option opts [String] :q Query string to search in workspace and role
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [PermissionListResponse]
    def get_permissions(id, opts = {})
      data, _status_code, _headers = get_permissions_with_http_info(id, opts)
      data
    end

    # getPermissions
    # Endpoint to list the user permissions.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_potential_permissions Include potential permissions, i.e. permissions that do not exist yet but would be created on first login attempt. (optional) (default to false)
    # @option opts [Boolean] :valid_only Show only active permissions. (optional) (default to false)
    # @option opts [String] :q Query string to search in workspace and role
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [Array<(PermissionListResponse, Integer, Hash)>] PermissionListResponse data, response status code and response headers
    def get_permissions_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_permissions ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_permissions"
      end
      # resource path
      local_var_path = '/users/{id}/permissions'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePotentialPermissions'] = opts[:'include_potential_permissions'] if !opts[:'include_potential_permissions'].nil?
      query_params[:'validOnly'] = opts[:'valid_only'] if !opts[:'valid_only'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PermissionListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSettings
    # Endpoint to list the user specific settings.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Setting type
    # @return [SettingListResponse]
    def get_settings(id, opts = {})
      data, _status_code, _headers = get_settings_with_http_info(id, opts)
      data
    end

    # getSettings
    # Endpoint to list the user specific settings.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Setting type
    # @return [Array<(SettingListResponse, Integer, Hash)>] SettingListResponse data, response status code and response headers
    def get_settings_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_settings ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_settings"
      end
      allowable_values = ["CONFIG", "SETUP"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/users/{id}/settings'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SettingListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getUser
    # Returns user data.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :return_single_permission If true returns only the permission for the workspace of the auth user
    # @return [UserResponse]
    def get_user(id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(id, opts)
      data
    end

    # getUser
    # Returns user data.
    # @param id [String] User UUID
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :return_single_permission If true returns only the permission for the workspace of the auth user
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def get_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'returnSinglePermission'] = opts[:'return_single_permission'] if !opts[:'return_single_permission'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results 
    # @return [Array<Hash<String, Object>>]
    def get_user_random(opts = {})
      data, _status_code, _headers = get_user_random_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results 
    # @return [Array<(Array<Hash<String, Object>>, Integer, Hash)>] Array<Hash<String, Object>> data, response status code and response headers
    def get_user_random_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user_random ...'
      end
      # resource path
      local_var_path = '/users/sample'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'maxResults'] = opts[:'max_results'] if !opts[:'max_results'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Hash<String, Object>>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user_random",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_random\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # User
    # List or search all users.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email Search by email address (optional)
    # @option opts [String] :q Search in user name or name (optional)
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 30, max 100) (default to 30)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [UserListResponse]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      data
    end

    # User
    # List or search all users.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email Search by email address (optional)
    # @option opts [String] :q Search in user name or name (optional)
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 30, max 100) (default to 30)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [Array<(UserListResponse, Integer, Hash)>] UserListResponse data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_users ...'
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.get_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset Password
    # Endpoint to finish the reset the password process, can only be accessed by systems.
    # @param id [String] User UUID
    # @param body [PasswordChangeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    def set_password(id, body, opts = {})
      data, _status_code, _headers = set_password_with_http_info(id, body, opts)
      data
    end

    # Reset Password
    # Endpoint to finish the reset the password process, can only be accessed by systems.
    # @param id [String] User UUID
    # @param body [PasswordChangeRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def set_password_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.set_password ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.set_password"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.set_password"
      end
      # resource path
      local_var_path = '/users/{id}/passwords'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.set_password",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#set_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updateUser
    # Update a user
    # @param id [String] User UUID
    # @param body [User] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :no_additional_permissions If true returns only the permissions already provided
    # @return [UserResponse]
    def update_user(id, body, opts = {})
      data, _status_code, _headers = update_user_with_http_info(id, body, opts)
      data
    end

    # updateUser
    # Update a user
    # @param id [String] User UUID
    # @param body [User] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :no_additional_permissions If true returns only the permissions already provided
    # @return [Array<(UserResponse, Integer, Hash)>] UserResponse data, response status code and response headers
    def update_user_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.update_user"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'noAdditionalPermissions'] = opts[:'no_additional_permissions'] if !opts[:'no_additional_permissions'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"UsersApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end