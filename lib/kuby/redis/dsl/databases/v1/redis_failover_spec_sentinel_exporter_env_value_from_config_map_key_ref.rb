# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporterEnvValueFromConfigMapKeyRef < ::KubeDSL::DSLObject
            value_field :optional
            value_field :name
            value_field :key

            validates :optional, field: { format: :boolean }, presence: true
            validates :name, field: { format: :string }, presence: false
            validates :key, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:optional] = optional
                result[:name] = name
                result[:key] = key
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_exporter_env_value_from_config_map_key_ref
            end
          end
        end
      end
    end
  end
end