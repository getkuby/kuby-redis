# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisSecurityContextWindowsOptions < ::KubeDSL::DSLObject
            value_field :run_as_user_name
            value_field :gmsa_credential_spec
            value_field :gmsa_credential_spec_name
            value_field :host_process

            validates :run_as_user_name, field: { format: :string }, presence: false
            validates :gmsa_credential_spec, field: { format: :string }, presence: false
            validates :gmsa_credential_spec_name, field: { format: :string }, presence: false
            validates :host_process, field: { format: :boolean }, presence: true

            def serialize
              {}.tap do |result|
                result[:runAsUserName] = run_as_user_name
                result[:gmsaCredentialSpec] = gmsa_credential_spec
                result[:gmsaCredentialSpecName] = gmsa_credential_spec_name
                result[:hostProcess] = host_process
              end
            end

            def kind_sym
              :redis_failover_spec_redis_security_context_windows_options
            end
          end
        end
      end
    end
  end
end