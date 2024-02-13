=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module LeanixMtmApi
  class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # createSetting
    # Endpoint to set a setting.
    # @param body [Setting] 
    # @param [Hash] opts the optional parameters
    # @return [SettingResponse]
    def create_setting(body, opts = {})
      data, _status_code, _headers = create_setting_with_http_info(body, opts)
      data
    end

    # createSetting
    # Endpoint to set a setting.
    # @param body [Setting] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingResponse, Integer, Hash)>] SettingResponse data, response status code and response headers
    def create_setting_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.create_setting ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SettingsApi.create_setting"
      end
      # resource path
      local_var_path = '/settings'

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
      return_type = opts[:debug_return_type] || 'SettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SettingsApi.create_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#create_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a setting
    # Endpoint to delete a setting.
    # @param id [String] Setting UUID
    # @param [Hash] opts the optional parameters
    # @return [SettingResponse]
    def delete_setting(id, opts = {})
      data, _status_code, _headers = delete_setting_with_http_info(id, opts)
      data
    end

    # Delete a setting
    # Endpoint to delete a setting.
    # @param id [String] Setting UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingResponse, Integer, Hash)>] SettingResponse data, response status code and response headers
    def delete_setting_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.delete_setting ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SettingsApi.delete_setting"
      end
      # resource path
      local_var_path = '/settings/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SettingsApi.delete_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#delete_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getNotificationSettings
    # Endpoint to get all settings related to notifications, internal usage only.
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [SettingListResponse]
    def get_notification_settings(account_id, opts = {})
      data, _status_code, _headers = get_notification_settings_with_http_info(account_id, opts)
      data
    end

    # getNotificationSettings
    # Endpoint to get all settings related to notifications, internal usage only.
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingListResponse, Integer, Hash)>] SettingListResponse data, response status code and response headers
    def get_notification_settings_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_notification_settings ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling SettingsApi.get_notification_settings"
      end
      # resource path
      local_var_path = '/settings/notificationSettings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accountId'] = account_id

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
        :operation => :"SettingsApi.get_notification_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_notification_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSetting
    # Endpoint to get a setting.
    # @param id [String] Setting UUID
    # @param [Hash] opts the optional parameters
    # @return [SettingResponse]
    def get_setting(id, opts = {})
      data, _status_code, _headers = get_setting_with_http_info(id, opts)
      data
    end

    # getSetting
    # Endpoint to get a setting.
    # @param id [String] Setting UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingResponse, Integer, Hash)>] SettingResponse data, response status code and response headers
    def get_setting_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_setting ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SettingsApi.get_setting"
      end
      # resource path
      local_var_path = '/settings/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SettingsApi.get_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getSettings
    # Retrieves settings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Account UUID
    # @option opts [String] :contract_id Contract UUID
    # @option opts [String] :user_id User UUID
    # @option opts [String] :workspace_id Workspace UUID
    # @option opts [String] :permission_id Permission UUID
    # @option opts [String] :application Application name
    # @option opts [String] :type Setting type
    # @return [SettingListResponse]
    def get_settings(opts = {})
      data, _status_code, _headers = get_settings_with_http_info(opts)
      data
    end

    # getSettings
    # Retrieves settings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id Account UUID
    # @option opts [String] :contract_id Contract UUID
    # @option opts [String] :user_id User UUID
    # @option opts [String] :workspace_id Workspace UUID
    # @option opts [String] :permission_id Permission UUID
    # @option opts [String] :application Application name
    # @option opts [String] :type Setting type
    # @return [Array<(SettingListResponse, Integer, Hash)>] SettingListResponse data, response status code and response headers
    def get_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.get_settings ...'
      end
      allowable_values = ["CONFIG", "SETUP"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/settings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accountId'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'contractId'] = opts[:'contract_id'] if !opts[:'contract_id'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'workspaceId'] = opts[:'workspace_id'] if !opts[:'workspace_id'].nil?
      query_params[:'permissionId'] = opts[:'permission_id'] if !opts[:'permission_id'].nil?
      query_params[:'application'] = opts[:'application'] if !opts[:'application'].nil?
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
        :operation => :"SettingsApi.get_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # toggleNotifications
    # Endpoint to enable/disable notifications.
    # @param disabled [Boolean] 
    # @param [Hash] opts the optional parameters
    # @return [SettingResponse]
    def set_workspace_notification_status(disabled, opts = {})
      data, _status_code, _headers = set_workspace_notification_status_with_http_info(disabled, opts)
      data
    end

    # toggleNotifications
    # Endpoint to enable/disable notifications.
    # @param disabled [Boolean] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingResponse, Integer, Hash)>] SettingResponse data, response status code and response headers
    def set_workspace_notification_status_with_http_info(disabled, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.set_workspace_notification_status ...'
      end
      # verify the required parameter 'disabled' is set
      if @api_client.config.client_side_validation && disabled.nil?
        fail ArgumentError, "Missing the required parameter 'disabled' when calling SettingsApi.set_workspace_notification_status"
      end
      # resource path
      local_var_path = '/settings/notifications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'disabled'] = disabled

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SettingsApi.set_workspace_notification_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#set_workspace_notification_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a setting
    # Endpoint to update a setting.
    # @param id [String] Setting UUID
    # @param body [Setting] 
    # @param [Hash] opts the optional parameters
    # @return [SettingResponse]
    def update_setting(id, body, opts = {})
      data, _status_code, _headers = update_setting_with_http_info(id, body, opts)
      data
    end

    # Update a setting
    # Endpoint to update a setting.
    # @param id [String] Setting UUID
    # @param body [Setting] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SettingResponse, Integer, Hash)>] SettingResponse data, response status code and response headers
    def update_setting_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SettingsApi.update_setting ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SettingsApi.update_setting"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SettingsApi.update_setting"
      end
      # resource path
      local_var_path = '/settings/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SettingResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"SettingsApi.update_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#update_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end