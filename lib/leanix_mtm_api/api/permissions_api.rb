=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module LeanixMtmApi
  class PermissionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # setPermission
    # Set a user permission for a workspace. If the related user object contains changed data, the data is persisted.
    # @param body [Permission] 
    # @param [Hash] opts the optional parameters
    # @return [PermissionResponse]
    def create_permission(body, opts = {})
      data, _status_code, _headers = create_permission_with_http_info(body, opts)
      data
    end

    # setPermission
    # Set a user permission for a workspace. If the related user object contains changed data, the data is persisted.
    # @param body [Permission] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PermissionResponse, Integer, Hash)>] PermissionResponse data, response status code and response headers
    def create_permission_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.create_permission ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PermissionsApi.create_permission"
      end
      # resource path
      local_var_path = '/permissions'

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
      return_type = opts[:debug_return_type] || 'PermissionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PermissionsApi.create_permission",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#create_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getPermission
    # Retrieves one permission for requested permission id.
    # @param id [String] Permission UUID
    # @param [Hash] opts the optional parameters
    # @return [PermissionResponse]
    def get_permission(id, opts = {})
      data, _status_code, _headers = get_permission_with_http_info(id, opts)
      data
    end

    # getPermission
    # Retrieves one permission for requested permission id.
    # @param id [String] Permission UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PermissionResponse, Integer, Hash)>] PermissionResponse data, response status code and response headers
    def get_permission_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.get_permission ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PermissionsApi.get_permission"
      end
      # resource path
      local_var_path = '/permissions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PermissionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PermissionsApi.get_permission",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getPermissions
    # Endpoint to list the user permissions. Restricted to LeanIX internal use only.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id User UUID
    # @option opts [String] :workspace_id Workspace UUID
    # @option opts [String] :q Query string to search the related user
    # @option opts [String] :email Email to search for, may also be a comma separated list of emails
    # @option opts [String] :status Optional status to search for
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 50, max 100) (default to 50)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [PermissionListResponse]
    def get_permissions(opts = {})
      data, _status_code, _headers = get_permissions_with_http_info(opts)
      data
    end

    # getPermissions
    # Endpoint to list the user permissions. Restricted to LeanIX internal use only.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id User UUID
    # @option opts [String] :workspace_id Workspace UUID
    # @option opts [String] :q Query string to search the related user
    # @option opts [String] :email Email to search for, may also be a comma separated list of emails
    # @option opts [String] :status Optional status to search for
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 50, max 100) (default to 50)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [Array<(PermissionListResponse, Integer, Hash)>] PermissionListResponse data, response status code and response headers
    def get_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.get_permissions ...'
      end
      # resource path
      local_var_path = '/permissions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'workspaceId'] = opts[:'workspace_id'] if !opts[:'workspace_id'].nil?
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
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
      return_type = opts[:debug_return_type] || 'PermissionListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PermissionsApi.get_permissions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Settings
    # Endpoint to list the permission specific settings.
    # @param id [String] Workspace UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Setting type
    # @return [SettingListResponse]
    def get_settings(id, opts = {})
      data, _status_code, _headers = get_settings_with_http_info(id, opts)
      data
    end

    # Settings
    # Endpoint to list the permission specific settings.
    # @param id [String] Workspace UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Setting type
    # @return [Array<(SettingListResponse, Integer, Hash)>] SettingListResponse data, response status code and response headers
    def get_settings_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.get_settings ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PermissionsApi.get_settings"
      end
      allowable_values = ["CONFIG", "SETUP"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/permissions/{id}/settings'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"PermissionsApi.get_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results 
    # @return [Array<PermissionEventPayload>]
    def get_user_random(opts = {})
      data, _status_code, _headers = get_user_random_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_results 
    # @return [Array<(Array<PermissionEventPayload>, Integer, Hash)>] Array<PermissionEventPayload> data, response status code and response headers
    def get_user_random_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.get_user_random ...'
      end
      # resource path
      local_var_path = '/permissions/sample'

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
      return_type = opts[:debug_return_type] || 'Array<PermissionEventPayload>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"PermissionsApi.get_user_random",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_user_random\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end