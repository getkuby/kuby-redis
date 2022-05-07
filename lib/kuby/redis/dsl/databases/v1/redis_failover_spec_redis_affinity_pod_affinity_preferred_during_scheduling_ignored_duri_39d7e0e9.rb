# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            key_value_field(:match_labels, format: :string)
            array_field(:match_expression) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions.new }

            validates :match_labels, kv: { value_format: :string }, presence: true
            validates :match_expressions, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions }, presence: false

            def serialize
              {}.tap do |result|
                result[:matchLabels] = match_labels.serialize
                result[:matchExpressions] = match_expressions.map(&:serialize)
              end
            end

            def kind_sym
              :redis_failover_spec_redis_affinity_pod_affinity_preferred_during_scheduling_ignored_during_execution_pod_affinity_term_label_selector
            end
          end
        end
      end
    end
  end
end