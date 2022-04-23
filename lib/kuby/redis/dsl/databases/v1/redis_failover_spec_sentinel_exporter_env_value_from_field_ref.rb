# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporterEnvValueFromFieldRef < ::KubeDSL::DSLObject
            value_field :field_path
            value_field :api_version

            validates :field_path, field: { format: :string }, presence: true
            validates :api_version, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:fieldPath] = field_path
                result[:apiVersion] = api_version
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_exporter_env_value_from_field_ref
            end
          end
        end
      end
    end
  end
end