=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::CNAMEInformationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CNAMEInformationApi' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::CNAMEInformationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CNAMEInformationApi' do
    it 'should create an instance of CNAMEInformationApi' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::CNAMEInformationApi)
    end
  end

  # unit tests for check_if_cname_exists
  # checkIfCnameExists
  # check if the provided CNAME exists
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name 
  # @return [Boolean]
  describe 'check_if_cname_exists test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
