# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedis < ::KubeDSL::DSLObject
            value_field :dns_policy
            key_value_field(:pod_annotations, format: :string)
            value_field :image
            value_field :host_network
            object_field(:exporter) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporter.new }
            key_value_field(:node_selector, format: :string)
            value_field :priority_class_name
            object_field(:security_context) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContext.new }
            object_field(:storage) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorage.new }
            array_field(:custom_command_rename) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisCustomCommandRenames.new }
            value_field :custom_config
            object_field(:affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinity.new }
            array_field(:toleration) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisTolerations.new }
            object_field(:resources) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisResources.new }
            value_field :shutdown_config_map
            value_field :termination_grace_period
            value_field :service_account_name
            value_field :replicas
            key_value_field(:service_annotations, format: :string)
            value_field :command
            value_field :image_pull_policy
            array_field(:image_pull_secret) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisImagePullSecrets.new }

            validates :dns_policy, field: { format: :string }, presence: false
            validates :pod_annotations, kv: { value_format: :string }, presence: true
            validates :image, field: { format: :string }, presence: false
            validates :host_network, field: { format: :boolean }, presence: true
            validates :exporter, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporter }
            validates :node_selector, kv: { value_format: :string }, presence: true
            validates :priority_class_name, field: { format: :string }, presence: false
            validates :security_context, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContext }
            validates :storage, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorage }
            validates :custom_command_renames, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisCustomCommandRenames }, presence: false
            validates :custom_config, field: { format: :string }, presence: false
            validates :affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinity }
            validates :tolerations, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisTolerations }, presence: false
            validates :resources, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisResources }
            validates :shutdown_config_map, field: { format: :string }, presence: false
            validates :termination_grace_period, field: { format: :integer }, presence: true
            validates :service_account_name, field: { format: :string }, presence: false
            validates :replicas, field: { format: :integer }, presence: true
            validates :service_annotations, kv: { value_format: :string }, presence: true
            validates :command, field: { format: :string }, presence: false
            validates :image_pull_policy, field: { format: :string }, presence: false
            validates :image_pull_secrets, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisImagePullSecrets }, presence: false

            def serialize
              {}.tap do |result|
                result[:dnsPolicy] = dns_policy
                result[:podAnnotations] = pod_annotations.serialize
                result[:image] = image
                result[:hostNetwork] = host_network
                result[:exporter] = exporter.serialize
                result[:nodeSelector] = node_selector.serialize
                result[:priorityClassName] = priority_class_name
                result[:securityContext] = security_context.serialize
                result[:storage] = storage.serialize
                result[:customCommandRenames] = custom_command_renames.map(&:serialize)
                result[:customConfig] = custom_config
                result[:affinity] = affinity.serialize
                result[:tolerations] = tolerations.map(&:serialize)
                result[:resources] = resources.serialize
                result[:shutdownConfigMap] = shutdown_config_map
                result[:terminationGracePeriod] = termination_grace_period
                result[:serviceAccountName] = service_account_name
                result[:replicas] = replicas
                result[:serviceAnnotations] = service_annotations.serialize
                result[:command] = command
                result[:imagePullPolicy] = image_pull_policy
                result[:imagePullSecrets] = image_pull_secrets.map(&:serialize)
              end
            end

            def kind_sym
              :redis_failover_spec_redis
            end
          end
        end
      end
    end
  end
end