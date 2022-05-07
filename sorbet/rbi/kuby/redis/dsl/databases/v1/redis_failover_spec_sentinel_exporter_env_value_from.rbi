# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporterEnvValueFrom < ::KubeDSL::DSLObject
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods
            include KubeDSL::ValueFields::InstanceMethods

            T::Sig::WithoutRuntime.sig {
              returns(
                T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
              )
            }
            def serialize; end

            T::Sig::WithoutRuntime.sig { returns(Symbol) }
            def kind_sym; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromSecretKeyRef) }
            def secret_key_ref; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def secret_key_ref_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromFieldRef) }
            def field_ref; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def field_ref_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromResourceFieldRef) }
            def resource_field_ref; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def resource_field_ref_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromConfigMapKeyRef) }
            def config_map_key_ref; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def config_map_key_ref_present?; end
          end
        end
      end
    end
  end
end