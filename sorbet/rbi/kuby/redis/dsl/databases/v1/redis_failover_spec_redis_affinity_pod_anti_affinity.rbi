# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisAffinityPodAntiAffinity < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution))
              ).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution])
            }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution))
              ).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution])
            }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end
        end
      end
    end
  end
end