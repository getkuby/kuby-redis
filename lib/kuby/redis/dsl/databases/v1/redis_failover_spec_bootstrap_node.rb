# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecBootstrapNode < ::KubeDSL::DSLObject
            value_field :host
            value_field :allow_sentinels
            value_field :port

            validates :host, field: { format: :string }, presence: false
            validates :allow_sentinels, field: { format: :boolean }, presence: true
            validates :port, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:host] = host
                result[:allowSentinels] = allow_sentinels
                result[:port] = port
              end
            end

            def kind_sym
              :redis_failover_spec_bootstrap_node
            end
          end
        end
      end
    end
  end
end