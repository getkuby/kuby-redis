# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisResources < ::KubeDSL::DSLObject
            key_value_field(:requests, format: :string)
            key_value_field(:limits, format: :string)

            validates :requests, kv: { value_format: :string }, presence: true
            validates :limits, kv: { value_format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:requests] = requests.serialize
                result[:limits] = limits.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_redis_resources
            end
          end
        end
      end
    end
  end
end