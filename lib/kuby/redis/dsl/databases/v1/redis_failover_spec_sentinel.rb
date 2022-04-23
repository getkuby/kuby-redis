# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecSentinel < ::KubeDSL::DSLObject
            value_field :priority_class_name
            value_field :dns_policy
            object_field(:exporter) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporter.new }
            object_field(:security_context) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContext.new }
            value_field :service_account_name
            key_value_field(:pod_annotations, format: :string)
            value_field :image
            value_field :host_network
            key_value_field(:node_selector, format: :string)
            array_field(:toleration) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelTolerations.new }
            key_value_field(:service_annotations, format: :string)
            value_field :command
            value_field :replicas
            value_field :image_pull_policy
            object_field(:affinity) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinity.new }
            value_field :custom_config
            array_field(:image_pull_secret) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelImagePullSecrets.new }
            object_field(:resources) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelResources.new }

            validates :priority_class_name, field: { format: :string }, presence: false
            validates :dns_policy, field: { format: :string }, presence: false
            validates :exporter, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporter }
            validates :security_context, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContext }
            validates :service_account_name, field: { format: :string }, presence: false
            validates :pod_annotations, kv: { value_format: :string }, presence: true
            validates :image, field: { format: :string }, presence: false
            validates :host_network, field: { format: :boolean }, presence: true
            validates :node_selector, kv: { value_format: :string }, presence: true
            validates :tolerations, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelTolerations }, presence: false
            validates :service_annotations, kv: { value_format: :string }, presence: true
            validates :command, field: { format: :string }, presence: false
            validates :replicas, field: { format: :integer }, presence: true
            validates :image_pull_policy, field: { format: :string }, presence: false
            validates :affinity, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinity }
            validates :custom_config, field: { format: :string }, presence: false
            validates :image_pull_secrets, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelImagePullSecrets }, presence: false
            validates :resources, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelResources }

            def serialize
              {}.tap do |result|
                result[:priorityClassName] = priority_class_name
                result[:dnsPolicy] = dns_policy
                result[:exporter] = exporter.serialize
                result[:securityContext] = security_context.serialize
                result[:serviceAccountName] = service_account_name
                result[:podAnnotations] = pod_annotations.serialize
                result[:image] = image
                result[:hostNetwork] = host_network
                result[:nodeSelector] = node_selector.serialize
                result[:tolerations] = tolerations.map(&:serialize)
                result[:serviceAnnotations] = service_annotations.serialize
                result[:command] = command
                result[:replicas] = replicas
                result[:imagePullPolicy] = image_pull_policy
                result[:affinity] = affinity.serialize
                result[:customConfig] = custom_config
                result[:imagePullSecrets] = image_pull_secrets.map(&:serialize)
                result[:resources] = resources.serialize
              end
            end

            def kind_sym
              :redis_failover_spec_sentinel
            end
          end
        end
      end
    end
  end
end