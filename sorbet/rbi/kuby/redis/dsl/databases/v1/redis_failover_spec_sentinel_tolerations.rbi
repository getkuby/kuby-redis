# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelTolerations < ::KubeDSL::DSLObject
            T::Sig::WithoutRuntime.sig {
              returns(
                T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
              )
            }
            def serialize; end

            T::Sig::WithoutRuntime.sig { returns(Symbol) }
            def kind_sym; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(Integer)).returns(Integer) }
            def toleration_seconds(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def effect(val = nil); end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end
        end
      end
    end
  end
end