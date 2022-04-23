# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelAffinity < ::KubeDSL::DSLObject
            object_field(:pod_affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinity.new }
            object_field(:node_affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinity.new }
            object_field(:pod_anti_affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinity.new }

            validates :pod_affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinity }
            validates :node_affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinity }
            validates :pod_anti_affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinity }

            def serialize
              {}.tap do |result|
                result[:podAffinity] = pod_affinity.serialize
                result[:nodeAffinity] = node_affinity.serialize
                result[:podAntiAffinity] = pod_anti_affinity.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_affinity
            end
          end
        end
      end
    end
  end
end