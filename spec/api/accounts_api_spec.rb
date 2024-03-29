=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixMtmApi::AccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @api_instance = LeanixMtmApi::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@api_instance).to be_instance_of(LeanixMtmApi::AccountsApi)
    end
  end

  # unit tests for add_data_breach_contact
  # addDataBreachContact
  # Adds a data breach contact to the account.
  # @param account_id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AccountResponse]
  describe 'add_data_breach_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_account
  # createAccount
  # Create an account. Restricted to LeanIX internal use only.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AccountResponse]
  describe 'create_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_account
  # deleteAccount
  # Delete an account. Restricted to LeanIX internal use only.
  # @param id Account UUID
  # @param [Hash] opts the optional parameters
  # @return [AccountResponse]
  describe 'delete_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_data_breach_contact
  # deleteDataBreachContact
  # Deletes a data breach contact of the account.
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [AccountResponse]
  describe 'delete_data_breach_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_account
  # getAccount
  # Retrieves a single account.
  # @param id Workspace UUID
  # @param [Hash] opts the optional parameters
  # @return [AccountResponse]
  describe 'get_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_accounts
  # getAccounts
  # Retrieves all accounts. Restricted to LeanIX internal use only.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :q A part of the name to search for
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 30, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @return [AccountListResponse]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_contracts
  # getContracts
  # Retrieves all contracts for the account.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 30, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @return [ContractListResponse]
  describe 'get_contracts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_data_breach_contacts
  # getDataBreachContact
  # Returns the list of data breach contacts of the account.
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [DataBreachContactListResponse]
  describe 'get_data_breach_contacts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_events
  # getEvents
  # Retrieves all events for an account (date must be ISO 8601 formatted).
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :since The date offset to fetch events from
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 100, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @return [EventListResponse]
  describe 'get_events test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_instances
  # getInstances
  # Get all instances for this account.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [InstanceListResponse]
  describe 'get_instances test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_settings
  # getSettings
  # Endpoint to list the user specific settings. Restricted to LeanIX internal use only.
  # @param id User UUID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Setting type
  # @return [SettingListResponse]
  describe 'get_settings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_users
  # getUsers
  # Get all users for this account.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email Search by email address (optional)
  # @option opts [String] :q Search in user name or name (optional)
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 30, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (optional)
  # @return [UserListResponse]
  describe 'get_users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_workspaces
  # getWorkspaces
  # Retrieves all workspaces for the account.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ContractListResponse]
  describe 'get_workspaces test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_account
  # updateAccount
  # Update account info.
  # @param id Account UUID
  # @param [Hash] opts the optional parameters
  # @option opts [Account] :body Account
  # @return [AccountResponse]
  describe 'update_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
