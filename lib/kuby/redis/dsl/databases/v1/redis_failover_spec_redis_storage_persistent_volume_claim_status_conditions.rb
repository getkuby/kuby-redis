# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStoragePersistentVolumeClaimStatusConditions < ::KubeDSL::DSLObject
            value_field :status
            value_field :last_transition_time
            value_field :reason
            value_field :last_probe_time
            value_field :message
            value_field :type

            validates :status, field: { format: :string }, presence: true
            validates :last_transition_time, field: { format: :string }, presence: false
            validates :reason, field: { format: :string }, presence: false
            validates :last_probe_time, field: { format: :string }, presence: false
            validates :message, field: { format: :string }, presence: false
            validates :type, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:status] = status
                result[:lastTransitionTime] = last_transition_time
                result[:reason] = reason
                result[:lastProbeTime] = last_probe_time
                result[:message] = message
                result[:type] = type
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_persistent_volume_claim_status_conditions
            end
          end
        end
      end
    end
  end
end