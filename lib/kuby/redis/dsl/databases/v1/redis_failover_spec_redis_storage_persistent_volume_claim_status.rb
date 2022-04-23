# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStoragePersistentVolumeClaimStatus < ::KubeDSL::DSLObject
            value_field :phase
            value_field :access_modes
            array_field(:condition) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatusConditions.new }
            key_value_field(:capacity, format: :string)

            validates :phase, field: { format: :string }, presence: false
            validates :access_modes, field: { format: :string }, presence: false
            validates :conditions, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatusConditions }, presence: false
            validates :capacity, kv: { value_format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:phase] = phase
                result[:accessModes] = access_modes
                result[:conditions] = conditions.map(&:serialize)
                result[:capacity] = capacity.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_persistent_volume_claim_status
            end
          end
        end
      end
    end
  end
end