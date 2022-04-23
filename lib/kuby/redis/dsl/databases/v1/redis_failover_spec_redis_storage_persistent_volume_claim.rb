# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStoragePersistentVolumeClaim < ::KubeDSL::DSLObject
            object_field(:status) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatus.new }
            value_field :kind
            object_field(:spec) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpec.new }
            value_field :api_version
            object_field(:metadata) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimMetadata.new }

            validates :status, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatus }
            validates :kind, field: { format: :string }, presence: false
            validates :spec, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpec }
            validates :api_version, field: { format: :string }, presence: false
            validates :metadata, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimMetadata }

            def serialize
              {}.tap do |result|
                result[:status] = status.serialize
                result[:kind] = kind
                result[:spec] = spec.serialize
                result[:apiVersion] = api_version
                result[:metadata] = metadata.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_persistent_volume_claim
            end
          end
        end
      end
    end
  end
end