# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisCustomCommandRenames < ::KubeDSL::DSLObject
            value_field :to
            value_field :from

            validates :to, field: { format: :string }, presence: false
            validates :from, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:to] = to
                result[:from] = from
              end
            end

            def kind_sym
              :redis_failover_spec_redis_custom_command_renames
            end
          end
        end
      end
    end
  end
end