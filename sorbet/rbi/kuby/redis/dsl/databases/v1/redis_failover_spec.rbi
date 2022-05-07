# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpec < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinel) }
            def sentinel; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def sentinel_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecBootstrapNode) }
            def bootstrap_node; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def bootstrap_node_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedis) }
            def redis; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def redis_present?; end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecAuth) }
            def auth; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def auth_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
            def label_whitelist(val = nil); end
          end
        end
      end
    end
  end
end