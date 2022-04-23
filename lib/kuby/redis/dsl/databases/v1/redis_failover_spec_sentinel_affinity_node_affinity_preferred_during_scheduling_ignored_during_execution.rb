# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            object_field(:preference) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference.new }
            value_field :weight

            validates :preference, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference }
            validates :weight, field: { format: :integer }, presence: true

            def serialize
              {}.tap do |result|
                result[:preference] = preference.serialize
                result[:weight] = weight
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_affinity_node_affinity_preferred_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end