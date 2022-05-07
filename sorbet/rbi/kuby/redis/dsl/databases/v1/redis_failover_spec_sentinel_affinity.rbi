# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinity < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinity) }
            def pod_affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def pod_affinity_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinity) }
            def node_affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def node_affinity_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinity) }
            def pod_anti_affinity; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def pod_anti_affinity_present?; end
          end
        end
      end
    end
  end
end