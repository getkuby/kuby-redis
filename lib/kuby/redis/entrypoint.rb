# typed: strict

module Kuby
  module Redis
    module Entrypoint
      def redis_failover_list(&block)
        ::Kuby::Redis::DSL::Databases::V1::RedisFailoverList.new(&block)
      end

      def redis_failover(&block)
        ::Kuby::Redis::DSL::Databases::V1::RedisFailover.new(&block)
      end
    end
  end
end
