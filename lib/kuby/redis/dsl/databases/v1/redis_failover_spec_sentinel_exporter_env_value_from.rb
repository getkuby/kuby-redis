# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporterEnvValueFrom < ::KubeDSL::DSLObject
            object_field(:secret_key_ref) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromSecretKeyRef.new }
            object_field(:field_ref) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromFieldRef.new }
            object_field(:resource_field_ref) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromResourceFieldRef.new }
            object_field(:config_map_key_ref) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromConfigMapKeyRef.new }

            validates :secret_key_ref, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromSecretKeyRef }
            validates :field_ref, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromFieldRef }
            validates :resource_field_ref, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromResourceFieldRef }
            validates :config_map_key_ref, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromConfigMapKeyRef }

            def serialize
              {}.tap do |result|
                result[:secretKeyRef] = secret_key_ref.serialize
                result[:fieldRef] = field_ref.serialize
                result[:resourceFieldRef] = resource_field_ref.serialize
                result[:configMapKeyRef] = config_map_key_ref.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_exporter_env_value_from
            end
          end
        end
      end
    end
  end
end