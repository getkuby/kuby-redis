# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms < ::KubeDSL::DSLObject
            array_field(:match_field) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields.new }
            array_field(:match_expression) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions.new }

            validates :match_fields, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields }, presence: false
            validates :match_expressions, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions }, presence: false

            def serialize
              {}.tap do |result|
                result[:matchFields] = match_fields.map(&:serialize)
                result[:matchExpressions] = match_expressions.map(&:serialize)
              end
            end

            def kind_sym
              :redis_failover_spec_redis_affinity_node_affinity_required_during_scheduling_ignored_during_execution_node_selector_terms
            end
          end
        end
      end
    end
  end
end