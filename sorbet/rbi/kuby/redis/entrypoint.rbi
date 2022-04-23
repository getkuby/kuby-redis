# typed: strict

module Kuby
  module Redis
    module Entrypoint
      T::Sig::WithoutRuntime.sig { params(block: T.proc.void).returns(::Kuby::Redis::DSL::Databases::V1::RedisFailoverList) }
      def redis_failover_list(&block); end

      T::Sig::WithoutRuntime.sig { params(block: T.proc.void).returns(::Kuby::Redis::DSL::Databases::V1::RedisFailover) }
      def redis_failover(&block); end
    end
  end
end
