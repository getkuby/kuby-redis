# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            array_field(:node_selector_term) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms.new }

            validates :node_selector_terms, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms }, presence: true

            def serialize
              {}.tap do |result|
                result[:nodeSelectorTerms] = node_selector_terms.map(&:serialize)
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_affinity_node_affinity_required_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end