# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpec < ::KubeDSL::DSLObject
            value_field :storage_class_name
            value_field :volume_mode
            object_field(:selector) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelector.new }
            value_field :access_modes
            object_field(:data_source_ref) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSourceRef.new }
            object_field(:data_source) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSource.new }
            value_field :volume_name
            object_field(:resources) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecResources.new }

            validates :storage_class_name, field: { format: :string }, presence: false
            validates :volume_mode, field: { format: :string }, presence: false
            validates :selector, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelector }
            validates :access_modes, field: { format: :string }, presence: false
            validates :data_source_ref, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSourceRef }
            validates :data_source, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSource }
            validates :volume_name, field: { format: :string }, presence: false
            validates :resources, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecResources }

            def serialize
              {}.tap do |result|
                result[:storageClassName] = storage_class_name
                result[:volumeMode] = volume_mode
                result[:selector] = selector.serialize
                result[:accessModes] = access_modes
                result[:dataSourceRef] = data_source_ref.serialize
                result[:dataSource] = data_source.serialize
                result[:volumeName] = volume_name
                result[:resources] = resources.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_persistent_volume_claim_spec
            end
          end
        end
      end
    end
  end
end