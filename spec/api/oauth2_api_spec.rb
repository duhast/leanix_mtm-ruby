=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::Oauth2Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Oauth2Api' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::Oauth2Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Oauth2Api' do
    it 'should create an instance of Oauth2Api' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::Oauth2Api)
    end
  end

  # unit tests for token
  # token
  # Creates an access token.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization 
  # @option opts [Boolean] :allow_inactive_workspace 
  # @option opts [String] :client_id 
  # @option opts [String] :client_secret 
  # @option opts [String] :code 
  # @option opts [String] :grant_type 
  # @option opts [String] :redirect_uri 
  # @option opts [String] :refresh_token 
  # @option opts [String] :username 
  # @option opts [String] :password 
  # @option opts [String] :scope 
  # @return [AccessTokenResponse]
  describe 'token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for token_0
  # @param workspace_id Workspace UUID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'token_0 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
