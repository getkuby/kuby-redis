# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelSecurityContextSeLinuxOptions < ::KubeDSL::DSLObject
            value_field :type
            value_field :role
            value_field :user
            value_field :level

            validates :type, field: { format: :string }, presence: false
            validates :role, field: { format: :string }, presence: false
            validates :user, field: { format: :string }, presence: false
            validates :level, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:type] = type
                result[:role] = role
                result[:user] = user
                result[:level] = level
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_security_context_se_linux_options
            end
          end
        end
      end
    end
  end
end