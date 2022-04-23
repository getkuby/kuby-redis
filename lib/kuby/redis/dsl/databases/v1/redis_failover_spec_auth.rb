# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecAuth < ::KubeDSL::DSLObject
            value_field :secret_path

            validates :secret_path, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:secretPath] = secret_path
              end
            end

            def kind_sym
              :redis_failover_spec_auth
            end
          end
        end
      end
    end
  end
end