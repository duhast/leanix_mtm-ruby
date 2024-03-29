=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::ApiTokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApiTokensApi' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::ApiTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApiTokensApi' do
    it 'should create an instance of ApiTokensApi' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::ApiTokensApi)
    end
  end

  # unit tests for create_api_token
  # createApiToken
  # Creates a personal API Token. Personal API Tokens are deprecated. Please use the &#39;Technical User&#39; functionality to create an API Token.
  # @param api_token 
  # @param [Hash] opts the optional parameters
  # @return [ApiTokenResponse]
  describe 'create_api_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_api_token
  # deleteApiToken
  # Deletes a personal API Token. Personal API Tokens are deprecated. Please use the &#39;Technical User&#39; functionality to create an API Token.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_api_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_api_token
  # getApiToken
  # Retrieves a personal API Token. Personal API Tokens are deprecated. Please use the &#39;Technical User&#39; functionality to create an API Token.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ApiTokenResponse]
  describe 'get_api_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_api_tokens
  # getApiTokens
  # Retrieves all matching personal API Tokens.  Personal API Tokens are deprecated. Please use the &#39;Technical User&#39; functionality to create an API Token.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 30, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @option opts [String] :identifier Filter by identifier (optional)
  # @option opts [String] :user_id Find tokens belonging to this user id. (optional, only allowed for SYSTEM user)
  # @option opts [String] :workspace_id Find tokens belonging to this workspace id. (optional)
  # @return [ApiTokenListResponse]
  describe 'get_api_tokens test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_api_token
  # updateApiToken
  # Updates a personal API Token. Personal API Tokens are deprecated. Please use the &#39;Technical User&#39; functionality to create an API Token.
  # @param id 
  # @param token_data 
  # @param [Hash] opts the optional parameters
  # @return [ApiTokenResponse]
  describe 'update_api_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
