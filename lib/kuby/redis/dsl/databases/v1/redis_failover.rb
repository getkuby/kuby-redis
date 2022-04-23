# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailover < ::KubeDSL::DSLObject
            object_field(:spec) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpec.new }
            value_field :api_version
            object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }

            validates :spec, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpec }
            validates :api_version, field: { format: :string }, presence: false
            validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ObjectMeta }

            def serialize
              {}.tap do |result|
                result[:kind] = "RedisFailover"
                result[:spec] = spec.serialize
                result[:apiVersion] = api_version
                result[:metadata] = metadata.serialize
              end
            end

            def kind_sym
              :redis_failover
            end
          end
        end
      end
    end
  end
end