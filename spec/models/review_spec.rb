=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LeanixMtmApi::Review
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LeanixMtmApi::Review do
  let(:instance) { LeanixMtmApi::Review.new }

  describe 'test an instance of Review' do
    it 'should create an instance of Review' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LeanixMtmApi::Review)
    end
  end

  describe 'test attribute "actor_username"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NOTINVITED", "ACTIVE", "ARCHIVED", "INVITED", "REQUESTED", "ANONYMIZED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end