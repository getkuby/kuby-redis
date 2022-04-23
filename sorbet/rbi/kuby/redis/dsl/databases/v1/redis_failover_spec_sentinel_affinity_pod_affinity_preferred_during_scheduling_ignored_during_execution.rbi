# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            T::Sig::WithoutRuntime.sig {
              returns(
                T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
              )
            }
            def serialize; end

            T::Sig::WithoutRuntime.sig { returns(Symbol) }
            def kind_sym; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end
        end
      end
    end
  end
end