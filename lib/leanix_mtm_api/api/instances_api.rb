=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module LeanixMtmApi
  class InstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # createInstance
    # Creates an instance. Restricted to LeanIX internal use only.
    # @param body [Instance] 
    # @param [Hash] opts the optional parameters
    # @return [InstanceResponse]
    def create_instance(body, opts = {})
      data, _status_code, _headers = create_instance_with_http_info(body, opts)
      data
    end

    # createInstance
    # Creates an instance. Restricted to LeanIX internal use only.
    # @param body [Instance] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstanceResponse, Integer, Hash)>] InstanceResponse data, response status code and response headers
    def create_instance_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.create_instance ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InstancesApi.create_instance"
      end
      # resource path
      local_var_path = '/instances'

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
      return_type = opts[:debug_return_type] || 'InstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.create_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#create_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deleteInstance
    # Deletes an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @return [InstanceResponse]
    def delete_instance(id, opts = {})
      data, _status_code, _headers = delete_instance_with_http_info(id, opts)
      data
    end

    # deleteInstance
    # Deletes an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstanceResponse, Integer, Hash)>] InstanceResponse data, response status code and response headers
    def delete_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.delete_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.delete_instance"
      end
      # resource path
      local_var_path = '/instances/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'InstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.delete_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#delete_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getDomains
    # Retrieves all domains for an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @return [DomainListResponse]
    def get_domains(id, opts = {})
      data, _status_code, _headers = get_domains_with_http_info(id, opts)
      data
    end

    # getDomains
    # Retrieves all domains for an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainListResponse, Integer, Hash)>] DomainListResponse data, response status code and response headers
    def get_domains_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_domains ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.get_domains"
      end
      # resource path
      local_var_path = '/instances/{id}/domains'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DomainListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.get_domains",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_domains\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getEvents
    # Retrieves all events for an instance (send date as 2013-10-05T00%3A21%3A54.000%2B07%3A00). Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :since ISO 8601 date
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 100, max 100) (default to 100)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [EventListResponse]
    def get_events(id, opts = {})
      data, _status_code, _headers = get_events_with_http_info(id, opts)
      data
    end

    # getEvents
    # Retrieves all events for an instance (send date as 2013-10-05T00%3A21%3A54.000%2B07%3A00). Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :since ISO 8601 date
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 100, max 100) (default to 100)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [Array<(EventListResponse, Integer, Hash)>] EventListResponse data, response status code and response headers
    def get_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_events ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.get_events"
      end
      # resource path
      local_var_path = '/instances/{id}/events'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"InstancesApi.get_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getInstance
    # Retrieves a specific instance. Restricted to LeanIX internal use only.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [InstanceResponse]
    def get_instance(id, opts = {})
      data, _status_code, _headers = get_instance_with_http_info(id, opts)
      data
    end

    # getInstance
    # Retrieves a specific instance. Restricted to LeanIX internal use only.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstanceResponse, Integer, Hash)>] InstanceResponse data, response status code and response headers
    def get_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.get_instance"
      end
      # resource path
      local_var_path = '/instances/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'InstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.get_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getInstances
    # Retrieves all instances. Restricted to LeanIX internal use only.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q A part of the name or URL to search for
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 30, max 100) (default to 30)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @option opts [String] :application Comma separated list of application names
    # @option opts [String] :url URL
    # @return [InstanceListResponse]
    def get_instances(opts = {})
      data, _status_code, _headers = get_instances_with_http_info(opts)
      data
    end

    # getInstances
    # Retrieves all instances. Restricted to LeanIX internal use only.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q A part of the name or URL to search for
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 30, max 100) (default to 30)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @option opts [String] :application Comma separated list of application names
    # @option opts [String] :url URL
    # @return [Array<(InstanceListResponse, Integer, Hash)>] InstanceListResponse data, response status code and response headers
    def get_instances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_instances ...'
      end
      # resource path
      local_var_path = '/instances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'application'] = opts[:'application'] if !opts[:'application'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InstanceListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.get_instances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @return [InstanceDtoListResponse]
    def get_instances_by_workspace(opts = {})
      data, _status_code, _headers = get_instances_by_workspace_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(InstanceDtoListResponse, Integer, Hash)>] InstanceDtoListResponse data, response status code and response headers
    def get_instances_by_workspace_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_instances_by_workspace ...'
      end
      # resource path
      local_var_path = '/instances/findByWorkspaceIds'

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
      return_type = opts[:debug_return_type] || 'InstanceDtoListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.get_instances_by_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_instances_by_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :workspace_type 
    # @option opts [String] :account_id 
    # @return [InstanceResponse]
    def get_preferred_instance(opts = {})
      data, _status_code, _headers = get_preferred_instance_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :workspace_type 
    # @option opts [String] :account_id 
    # @return [Array<(InstanceResponse, Integer, Hash)>] InstanceResponse data, response status code and response headers
    def get_preferred_instance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_preferred_instance ...'
      end
      allowable_values = ["LIVE", "DEMO", "SANDBOX"]
      if @api_client.config.client_side_validation && opts[:'workspace_type'] && !allowable_values.include?(opts[:'workspace_type'])
        fail ArgumentError, "invalid value for \"workspace_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/instances/preferred'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'workspaceType'] = opts[:'workspace_type'] if !opts[:'workspace_type'].nil?
      query_params[:'accountID'] = opts[:'account_id'] if !opts[:'account_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.get_preferred_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_preferred_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getWorkspaces
    # Retrieves all workspaces for an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @return [WorkspaceListResponse]
    def get_workspaces(id, opts = {})
      data, _status_code, _headers = get_workspaces_with_http_info(id, opts)
      data
    end

    # getWorkspaces
    # Retrieves all workspaces for an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkspaceListResponse, Integer, Hash)>] WorkspaceListResponse data, response status code and response headers
    def get_workspaces_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.get_workspaces ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.get_workspaces"
      end
      # resource path
      local_var_path = '/instances/{id}/workspaces'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WorkspaceListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.get_workspaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#get_workspaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def switch_default_instance(id, opts = {})
      switch_default_instance_with_http_info(id, opts)
      nil
    end

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def switch_default_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.switch_default_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.switch_default_instance"
      end
      # resource path
      local_var_path = '/instances/{id}/setToDefault'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.switch_default_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#switch_default_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updateInstance
    # Updates an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param body [Instance] 
    # @param [Hash] opts the optional parameters
    # @return [InstanceResponse]
    def update_instance(id, body, opts = {})
      data, _status_code, _headers = update_instance_with_http_info(id, body, opts)
      data
    end

    # updateInstance
    # Updates an instance. Restricted to LeanIX internal use only.
    # @param id [String] Instance UUID
    # @param body [Instance] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstanceResponse, Integer, Hash)>] InstanceResponse data, response status code and response headers
    def update_instance_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InstancesApi.update_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InstancesApi.update_instance"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling InstancesApi.update_instance"
      end
      # resource path
      local_var_path = '/instances/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'InstanceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"InstancesApi.update_instance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstancesApi#update_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
