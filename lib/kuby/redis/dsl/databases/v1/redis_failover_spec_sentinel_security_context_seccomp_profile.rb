# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelSecurityContextSeccompProfile < ::KubeDSL::DSLObject
            value_field :localhost_profile
            value_field :type

            validates :localhost_profile, field: { format: :string }, presence: false
            validates :type, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:localhostProfile] = localhost_profile
                result[:type] = type
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_security_context_seccomp_profile
            end
          end
        end
      end
    end
  end
end