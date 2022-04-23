# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisSecurityContextSysctls < ::KubeDSL::DSLObject
            value_field :name
            value_field :value

            validates :name, field: { format: :string }, presence: true
            validates :value, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:name] = name
                result[:value] = value
              end
            end

            def kind_sym
              :redis_failover_spec_redis_security_context_sysctls
            end
          end
        end
      end
    end
  end
end