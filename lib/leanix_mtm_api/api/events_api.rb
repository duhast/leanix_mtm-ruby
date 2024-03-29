=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module LeanixMtmApi
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # createEvent
    # Creates an event. Restricted to LeanIX internal use only.
    # @param body [Event] 
    # @param [Hash] opts the optional parameters
    # @return [EventResponse]
    def create_event(body, opts = {})
      data, _status_code, _headers = create_event_with_http_info(body, opts)
      data
    end

    # createEvent
    # Creates an event. Restricted to LeanIX internal use only.
    # @param body [Event] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def create_event_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.create_event ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EventsApi.create_event"
      end
      # resource path
      local_var_path = '/events'

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
      return_type = opts[:debug_return_type] || 'EventResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EventsApi.create_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#create_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getEvent
    # Retrieves one event. Restricted to LeanIX internal use only.
    # @param id [String] Event UUID
    # @param [Hash] opts the optional parameters
    # @return [EventResponse]
    def get_event(id, opts = {})
      data, _status_code, _headers = get_event_with_http_info(id, opts)
      data
    end

    # getEvent
    # Retrieves one event. Restricted to LeanIX internal use only.
    # @param id [String] Event UUID
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def get_event_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_event ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EventsApi.get_event"
      end
      # resource path
      local_var_path = '/events/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'EventResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EventsApi.get_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getEvents
    # Retrieves all events for the requesting user. Restricted to LeanIX internal use only.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :since 
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 100, max 100) (default to 100)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [EventListResponse]
    def get_events(opts = {})
      data, _status_code, _headers = get_events_with_http_info(opts)
      data
    end

    # getEvents
    # Retrieves all events for the requesting user. Restricted to LeanIX internal use only.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :since 
    # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1) (default to 1)
    # @option opts [Integer] :size The page size requested (defaults to 100, max 100) (default to 100)
    # @option opts [String] :sort Comma-separated list of sorting (optional)
    # @return [Array<(EventListResponse, Integer, Hash)>] EventListResponse data, response status code and response headers
    def get_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_events ...'
      end
      # resource path
      local_var_path = '/events'

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
        :operation => :"EventsApi.get_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [String] :workspace_id 
    # @option opts [String] :user_id 
    # @return [Array<Array<Object>>]
    def get_raw(opts = {})
      data, _status_code, _headers = get_raw_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [String] :workspace_id 
    # @option opts [String] :user_id 
    # @return [Array<(Array<Array<Object>>, Integer, Hash)>] Array<Array<Object>> data, response status code and response headers
    def get_raw_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_raw ...'
      end
      # resource path
      local_var_path = '/events/raw'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'workspaceId'] = opts[:'workspace_id'] if !opts[:'workspace_id'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Array<Object>>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EventsApi.get_raw",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_raw\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updateEvent
    # Updates an event, only status can be updated. Restricted to LeanIX internal use only.
    # @param id [String] Event UUID
    # @param body [Event] 
    # @param [Hash] opts the optional parameters
    # @return [EventResponse]
    def update_event(id, body, opts = {})
      data, _status_code, _headers = update_event_with_http_info(id, body, opts)
      data
    end

    # updateEvent
    # Updates an event, only status can be updated. Restricted to LeanIX internal use only.
    # @param id [String] Event UUID
    # @param body [Event] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventResponse, Integer, Hash)>] EventResponse data, response status code and response headers
    def update_event_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.update_event ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EventsApi.update_event"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling EventsApi.update_event"
      end
      # resource path
      local_var_path = '/events/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'EventResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"EventsApi.update_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#update_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
