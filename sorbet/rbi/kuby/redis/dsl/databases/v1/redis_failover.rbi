# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailover < ::KubeDSL::DSLObject
            T::Sig::WithoutRuntime.sig {
              returns(
                T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
              )
            }
            def serialize; end

            T::Sig::WithoutRuntime.sig { returns(Symbol) }
            def kind_sym; end


            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpec) }
            def spec; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
            def metadata; end
          end
        end
      end
    end
  end
end