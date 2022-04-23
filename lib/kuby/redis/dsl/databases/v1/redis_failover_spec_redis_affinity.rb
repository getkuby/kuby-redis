# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisAffinity < ::KubeDSL::DSLObject
            object_field(:pod_affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinity.new }
            object_field(:node_affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinity.new }
            object_field(:pod_anti_affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinity.new }

            validates :pod_affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinity }
            validates :node_affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinity }
            validates :pod_anti_affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinity }

            def serialize
              {}.tap do |result|
                result[:podAffinity] = pod_affinity.serialize
                result[:nodeAffinity] = node_affinity.serialize
                result[:podAntiAffinity] = pod_anti_affinity.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_redis_affinity
            end
          end
        end
      end
    end
  end
end