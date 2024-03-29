=begin
#MTM

#Multi-tenancy-manager for LeanIX. Manages accounts, contracts, users, workspaces, permissions, and more.

The version of the OpenAPI document: 1.6.348

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

# Common files
require 'leanix_mtm_api/api_client'
require 'leanix_mtm_api/api_error'
require 'leanix_mtm_api/version'
require 'leanix_mtm_api/configuration'

# Models
require 'leanix_mtm_api/models/access_token_response'
require 'leanix_mtm_api/models/account'
require 'leanix_mtm_api/models/account_list_response'
require 'leanix_mtm_api/models/account_response'
require 'leanix_mtm_api/models/activation'
require 'leanix_mtm_api/models/api_error'
require 'leanix_mtm_api/models/api_token'
require 'leanix_mtm_api/models/api_token_data'
require 'leanix_mtm_api/models/api_token_input_data'
require 'leanix_mtm_api/models/api_token_list_response'
require 'leanix_mtm_api/models/api_token_response'
require 'leanix_mtm_api/models/application'
require 'leanix_mtm_api/models/application_list_response'
require 'leanix_mtm_api/models/application_response'
require 'leanix_mtm_api/models/basic_response'
require 'leanix_mtm_api/models/chronology'
require 'leanix_mtm_api/models/contract'
require 'leanix_mtm_api/models/contract_list_response'
require 'leanix_mtm_api/models/contract_response'
require 'leanix_mtm_api/models/credentials'
require 'leanix_mtm_api/models/credentials_response'
require 'leanix_mtm_api/models/custom_certificate'
require 'leanix_mtm_api/models/custom_feature'
require 'leanix_mtm_api/models/custom_feature_list_response'
require 'leanix_mtm_api/models/custom_feature_response'
require 'leanix_mtm_api/models/data_breach_contact'
require 'leanix_mtm_api/models/data_breach_contact_list_response'
require 'leanix_mtm_api/models/date_time_zone'
require 'leanix_mtm_api/models/domain'
require 'leanix_mtm_api/models/domain_dto'
require 'leanix_mtm_api/models/domain_list_response'
require 'leanix_mtm_api/models/domain_response'
require 'leanix_mtm_api/models/download_key'
require 'leanix_mtm_api/models/download_key_response'
require 'leanix_mtm_api/models/event'
require 'leanix_mtm_api/models/event_list_response'
require 'leanix_mtm_api/models/event_response'
require 'leanix_mtm_api/models/feature'
require 'leanix_mtm_api/models/feature_access'
require 'leanix_mtm_api/models/feature_access_request'
require 'leanix_mtm_api/models/feature_access_response'
require 'leanix_mtm_api/models/feature_bundle'
require 'leanix_mtm_api/models/feature_bundle_list_response'
require 'leanix_mtm_api/models/feature_bundle_response'
require 'leanix_mtm_api/models/feature_list_response'
require 'leanix_mtm_api/models/feature_response'
require 'leanix_mtm_api/models/graph_ql_request'
require 'leanix_mtm_api/models/graph_ql_result'
require 'leanix_mtm_api/models/identity_provider'
require 'leanix_mtm_api/models/identity_provider_list_response'
require 'leanix_mtm_api/models/identity_provider_response'
require 'leanix_mtm_api/models/impersonation'
require 'leanix_mtm_api/models/impersonation_list_response'
require 'leanix_mtm_api/models/impersonation_response'
require 'leanix_mtm_api/models/instance'
require 'leanix_mtm_api/models/instance_dto'
require 'leanix_mtm_api/models/instance_dto_list_response'
require 'leanix_mtm_api/models/instance_list_response'
require 'leanix_mtm_api/models/instance_response'
require 'leanix_mtm_api/models/instant'
require 'leanix_mtm_api/models/invitation'
require 'leanix_mtm_api/models/job_title_dto'
require 'leanix_mtm_api/models/job_to_be_done_dto'
require 'leanix_mtm_api/models/link'
require 'leanix_mtm_api/models/login'
require 'leanix_mtm_api/models/login_response'
require 'leanix_mtm_api/models/long_lived_bearer_token_response'
require 'leanix_mtm_api/models/password_change_request'
require 'leanix_mtm_api/models/permission'
require 'leanix_mtm_api/models/permission_event_payload'
require 'leanix_mtm_api/models/permission_list_response'
require 'leanix_mtm_api/models/permission_response'
require 'leanix_mtm_api/models/review'
require 'leanix_mtm_api/models/role_detail'
require 'leanix_mtm_api/models/setting'
require 'leanix_mtm_api/models/setting_list_response'
require 'leanix_mtm_api/models/setting_response'
require 'leanix_mtm_api/models/stack_trace_element'
require 'leanix_mtm_api/models/stat'
require 'leanix_mtm_api/models/stats_list_response'
require 'leanix_mtm_api/models/technical_user_data'
require 'leanix_mtm_api/models/technical_user_input_data'
require 'leanix_mtm_api/models/technical_user_list_response'
require 'leanix_mtm_api/models/technical_user_response'
require 'leanix_mtm_api/models/throwable'
require 'leanix_mtm_api/models/transient_permission_payload'
require 'leanix_mtm_api/models/try'
require 'leanix_mtm_api/models/try_uuid'
require 'leanix_mtm_api/models/user'
require 'leanix_mtm_api/models/user_list_response'
require 'leanix_mtm_api/models/user_response'
require 'leanix_mtm_api/models/user_segment_dto'
require 'leanix_mtm_api/models/workspace'
require 'leanix_mtm_api/models/workspace_list_response'
require 'leanix_mtm_api/models/workspace_response'

# APIs
require 'leanix_mtm_api/api/accounts_api'
require 'leanix_mtm_api/api/api_tokens_api'
require 'leanix_mtm_api/api/applications_api'
require 'leanix_mtm_api/api/cname_information_api'
require 'leanix_mtm_api/api/contracts_api'
require 'leanix_mtm_api/api/custom_features_api'
require 'leanix_mtm_api/api/default_api'
require 'leanix_mtm_api/api/domains_api'
require 'leanix_mtm_api/api/events_api'
require 'leanix_mtm_api/api/exports_api'
require 'leanix_mtm_api/api/identity_providers_api'
require 'leanix_mtm_api/api/idm_api'
require 'leanix_mtm_api/api/inactive_api'
require 'leanix_mtm_api/api/instances_api'
require 'leanix_mtm_api/api/oauth2_api'
require 'leanix_mtm_api/api/permissions_api'
require 'leanix_mtm_api/api/settings_api'
require 'leanix_mtm_api/api/stats_api'
require 'leanix_mtm_api/api/technicalusers_api'
require 'leanix_mtm_api/api/users_api'
require 'leanix_mtm_api/api/workspaces_api'

module LeanixMtmApi
  class << self
    # Customize default settings for the SDK using block.
    #   LeanixMtmApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
