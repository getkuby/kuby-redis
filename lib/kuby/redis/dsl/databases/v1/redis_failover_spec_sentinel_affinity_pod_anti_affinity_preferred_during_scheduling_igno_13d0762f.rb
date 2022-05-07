# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            object_field(:pod_affinity_term) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm.new }
            value_field :weight

            validates :pod_affinity_term, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm }
            validates :weight, field: { format: :integer }, presence: true

            def serialize
              {}.tap do |result|
                result[:podAffinityTerm] = pod_affinity_term.serialize
                result[:weight] = weight
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_affinity_pod_anti_affinity_preferred_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end