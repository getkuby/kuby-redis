# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpec < ::KubeDSL::DSLObject
            object_field(:sentinel) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinel.new }
            object_field(:bootstrap_node) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecBootstrapNode.new }
            object_field(:redis) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedis.new }
            object_field(:auth) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecAuth.new }
            value_field :label_whitelist

            validates :sentinel, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinel }
            validates :bootstrap_node, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecBootstrapNode }
            validates :redis, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedis }
            validates :auth, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecAuth }
            validates :label_whitelist, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:sentinel] = sentinel.serialize
                result[:bootstrapNode] = bootstrap_node.serialize
                result[:redis] = redis.serialize
                result[:auth] = auth.serialize
                result[:labelWhitelist] = label_whitelist
              end
            end

            def kind_sym
              :redis_failover_spec
            end
          end
        end
      end
    end
  end
end