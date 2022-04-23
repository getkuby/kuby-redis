# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporterEnv < ::KubeDSL::DSLObject
            object_field(:value_from) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFrom.new }
            value_field :name
            value_field :value

            validates :value_from, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFrom }
            validates :name, field: { format: :string }, presence: true
            validates :value, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:valueFrom] = value_from.serialize
                result[:name] = name
                result[:value] = value
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_exporter_env
            end
          end
        end
      end
    end
  end
end