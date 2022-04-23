# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisStorageEmptyDir < ::KubeDSL::DSLObject
            value_field :medium

            validates :medium, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:medium] = medium
              end
            end

            def kind_sym
              :redis_failover_spec_redis_storage_empty_dir
            end
          end
        end
      end
    end
  end
end