# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            object_field(:namespace_selector) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector.new }
            object_field(:label_selector) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector.new }
            value_field :namespaces
            value_field :topology_key

            validates :namespace_selector, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector }
            validates :label_selector, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector }
            validates :namespaces, field: { format: :string }, presence: false
            validates :topology_key, field: { format: :string }, presence: true

            def serialize
              {}.tap do |result|
                result[:namespaceSelector] = namespace_selector.serialize
                result[:labelSelector] = label_selector.serialize
                result[:namespaces] = namespaces
                result[:topologyKey] = topology_key
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_affinity_pod_affinity_required_during_scheduling_ignored_during_execution
            end
          end
        end
      end
    end
  end
end