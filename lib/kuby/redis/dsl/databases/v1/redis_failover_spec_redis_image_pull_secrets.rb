# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisImagePullSecrets < ::KubeDSL::DSLObject
            value_field :name

            validates :name, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:name] = name
              end
            end

            def kind_sym
              :redis_failover_spec_redis_image_pull_secrets
            end
          end
        end
      end
    end
  end
end