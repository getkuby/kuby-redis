# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporterEnvValueFromResourceFieldRef < ::KubeDSL::DSLObject
            value_field :container_name
            value_field :resource

            validates :container_name, field: { format: :string }, presence: false
            validates :resource, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:containerName] = container_name
                result[:resource] = resource
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_exporter_env_value_from_resource_field_ref
            end
          end
        end
      end
    end
  end
end