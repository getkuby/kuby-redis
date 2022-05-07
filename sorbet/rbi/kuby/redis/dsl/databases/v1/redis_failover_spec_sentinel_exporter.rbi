# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporter < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def image(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def args(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def enabled(val = nil); end

            T::Sig::WithoutRuntime.sig {
              params(
                elem_name: T.nilable(Symbol),
                block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnv))
              ).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnv])
            }
            def envs(elem_name = nil, &block); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def image_pull_policy(val = nil); end
          end
        end
      end
    end
  end
end