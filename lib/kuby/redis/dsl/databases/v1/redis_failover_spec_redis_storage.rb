# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStorage < ::KubeDSL::DSLObject
            object_field(:empty_dir) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorageEmptyDir.new }
            value_field :keep_after_deletion
            object_field(:persistent_volume_claim) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaim.new }

            validates :empty_dir, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorageEmptyDir }
            validates :keep_after_deletion, field: { format: :boolean }, presence: true
            validates :persistent_volume_claim, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaim }

            def serialize
              {}.tap do |result|
                result[:emptyDir] = empty_dir.serialize
                result[:keepAfterDeletion] = keep_after_deletion
                result[:persistentVolumeClaim] = persistent_volume_claim.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage
            end
          end
        end
      end
    end
  end
end