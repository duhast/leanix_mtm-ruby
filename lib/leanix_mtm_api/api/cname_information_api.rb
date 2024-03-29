=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module LeanixMtmApi
  class CNAMEInformationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # checkIfCnameExists
    # check if the provided CNAME exists
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @return [Boolean]
    def check_if_cname_exists(opts = {})
      data, _status_code, _headers = check_if_cname_exists_with_http_info(opts)
      data
    end

    # checkIfCnameExists
    # check if the provided CNAME exists
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name 
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def check_if_cname_exists_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CNAMEInformationApi.check_if_cname_exists ...'
      end
      # resource path
      local_var_path = '/cnames'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['token']

      new_options = opts.merge(
        :operation => :"CNAMEInformationApi.check_if_cname_exists",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CNAMEInformationApi#check_if_cname_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
