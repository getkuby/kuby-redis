# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisTolerations < ::KubeDSL::DSLObject
            value_field :operator
            value_field :value
            value_field :toleration_seconds
            value_field :effect
            value_field :key

            validates :operator, field: { format: :string }, presence: false
            validates :value, field: { format: :string }, presence: false
            validates :toleration_seconds, field: { format: :integer }, presence: true
            validates :effect, field: { format: :string }, presence: false
            validates :key, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:operator] = operator
                result[:value] = value
                result[:tolerationSeconds] = toleration_seconds
                result[:effect] = effect
                result[:key] = key
              end
            end

            def kind_sym
              :redis_failover_spec_redis_tolerations
            end
          end
        end
      end
    end
  end
end