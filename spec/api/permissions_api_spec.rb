=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::PermissionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PermissionsApi' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::PermissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionsApi' do
    it 'should create an instance of PermissionsApi' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::PermissionsApi)
    end
  end

  # unit tests for create_permission
  # setPermission
  # Set a user permission for a workspace. If the related user object contains changed data, the data is persisted.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [PermissionResponse]
  describe 'create_permission test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_permission
  # getPermission
  # Retrieves one permission for requested permission id.
  # @param id Permission UUID
  # @param [Hash] opts the optional parameters
  # @return [PermissionResponse]
  describe 'get_permission test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_permissions
  # getPermissions
  # Endpoint to list the user permissions. Restricted to LeanIX internal use only.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_id User UUID
  # @option opts [String] :workspace_id Workspace UUID
  # @option opts [String] :q Query string to search the related user
  # @option opts [String] :email Email to search for, may also be a comma separated list of emails
  # @option opts [String] :status Optional status to search for
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 50, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @return [PermissionListResponse]
  describe 'get_permissions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_settings
  # Settings
  # Endpoint to list the permission specific settings.
  # @param id Workspace UUID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Setting type
  # @return [SettingListResponse]
  describe 'get_settings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_random
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_results 
  # @return [Array<PermissionEventPayload>]
  describe 'get_user_random test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
