=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::ApplicationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApplicationsApi' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::ApplicationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationsApi' do
    it 'should create an instance of ApplicationsApi' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::ApplicationsApi)
    end
  end

  # unit tests for access_feature
  # accessFeature
  # Checks the use permission of a feature
  # @param name 
  # @param id 
  # @param feature_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [FeatureAccessResponse]
  describe 'access_feature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_application
  # getApplication
  # Retrieve specific application by name. Restricted to LeanIX internal use only.
  # @param name application name, a const like mtm
  # @param [Hash] opts the optional parameters
  # @return [ApplicationResponse]
  describe 'get_application test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_applications
  # getApplications
  # Retrieves all applications. Restricted to LeanIX internal use only.
  # @param [Hash] opts the optional parameters
  # @return [ApplicationListResponse]
  describe 'get_applications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_edition
  # getEditions
  # Retrieves an edition
  # @param name 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [FeatureBundleResponse]
  describe 'get_edition test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_editions
  # getEditions
  # Retrieves all editions. Restricted to LeanIX internal use only.
  # @param name 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :without_legacy_editions 
  # @option opts [String] :q 
  # @return [FeatureBundleListResponse]
  describe 'get_editions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_feature
  # getFeature
  # Retrieves a feature
  # @param name 
  # @param id 
  # @param feature_id 
  # @param [Hash] opts the optional parameters
  # @return [FeatureResponse]
  describe 'get_feature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_features
  # getFeatures
  # Retrieves all possible features
  # @param name 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :q 
  # @return [FeatureListResponse]
  describe 'get_features test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end