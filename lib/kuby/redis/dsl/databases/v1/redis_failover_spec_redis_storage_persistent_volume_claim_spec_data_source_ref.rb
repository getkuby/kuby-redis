# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSourceRef < ::KubeDSL::DSLObject
            value_field :api_group
            value_field :kind
            value_field :name

            validates :api_group, field: { format: :string }, presence: false
            validates :kind, field: { format: :string }, presence: true
            validates :name, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:apiGroup] = api_group
                result[:kind] = kind
                result[:name] = name
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_persistent_volume_claim_spec_data_source_ref
            end
          end
        end
      end
    end
  end
end