# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinelExporter < ::KubeDSL::DSLObject
            value_field :image
            value_field :args
            value_field :enabled
            array_field(:env) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnv.new }
            value_field :image_pull_policy

            validates :image, field: { format: :string }, presence: false
            validates :args, field: { format: :string }, presence: false
            validates :enabled, field: { format: :boolean }, presence: true
            validates :envs, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnv }, presence: false
            validates :image_pull_policy, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:image] = image
                result[:args] = args
                result[:enabled] = enabled
                result[:env] = envs.map(&:serialize)
                result[:imagePullPolicy] = image_pull_policy
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel_exporter
            end
          end
        end
      end
    end
  end
end