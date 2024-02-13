=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::EventsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::EventsApi)
    end
  end

  # unit tests for create_event
  # createEvent
  # Creates an event. Restricted to LeanIX internal use only.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [EventResponse]
  describe 'create_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_event
  # getEvent
  # Retrieves one event. Restricted to LeanIX internal use only.
  # @param id Event UUID
  # @param [Hash] opts the optional parameters
  # @return [EventResponse]
  describe 'get_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_events
  # getEvents
  # Retrieves all events for the requesting user. Restricted to LeanIX internal use only.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :since 
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 100, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @return [EventListResponse]
  describe 'get_events test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_raw
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type 
  # @option opts [String] :workspace_id 
  # @option opts [String] :user_id 
  # @return [Array<Array<Object>>]
  describe 'get_raw test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_event
  # updateEvent
  # Updates an event, only status can be updated. Restricted to LeanIX internal use only.
  # @param id Event UUID
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [EventResponse]
  describe 'update_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end