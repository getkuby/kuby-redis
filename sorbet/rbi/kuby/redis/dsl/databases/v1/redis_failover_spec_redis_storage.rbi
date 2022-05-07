# typed: strict

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStorage < ::KubeDSL::DSLObject
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

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorageEmptyDir) }
            def empty_dir; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def empty_dir_present?; end

            T::Sig::WithoutRuntime.sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def keep_after_deletion(val = nil); end

            T::Sig::WithoutRuntime.sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaim) }
            def persistent_volume_claim; end
            
            T::Sig::WithoutRuntime.sig { returns(T::Boolean) }
            def persistent_volume_claim_present?; end
          end
        end
      end
    end
  end
end