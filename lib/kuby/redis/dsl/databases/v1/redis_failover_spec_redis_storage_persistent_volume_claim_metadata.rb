# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStoragePersistentVolumeClaimMetadata < ::KubeDSL::DSLObject
            key_value_field(:labels, format: :string)
            key_value_field(:annotations, format: :string)
            value_field :name

            validates :labels, kv: { value_format: :string }, presence: true
            validates :annotations, kv: { value_format: :string }, presence: true
            validates :name, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:labels] = labels.serialize
                result[:annotations] = annotations.serialize
                result[:name] = name
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_persistent_volume_claim_metadata
            end
          end
        end
      end
    end
  end
end