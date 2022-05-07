# typed: strong
module Kuby
  module Redis
    module Entrypoint
      sig { params(block: T.proc.void).returns(::Kuby::Redis::DSL::Databases::V1::RedisFailoverList) }
      def redis_failover_list(&block); end

      sig { params(block: T.proc.void).returns(::Kuby::Redis::DSL::Databases::V1::RedisFailover) }
      def redis_failover(&block); end
    end

    module DSL
      module Databases
        module V1
          class RedisFailover < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpec) }
            def spec; end

            sig { returns(T::Boolean) }
            def spec_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end

            sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
            def metadata; end

            sig { returns(T::Boolean) }
            def metadata_present?; end
          end

          class RedisFailoverList < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailover))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailover]) }
            def items(elem_name = nil, &block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end

            sig { returns(KubeDSL::DSL::Meta::V1::ListMeta) }
            def metadata; end

            sig { returns(T::Boolean) }
            def metadata_present?; end
          end

          class RedisFailoverSpec < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinel) }
            def sentinel; end

            sig { returns(T::Boolean) }
            def sentinel_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecBootstrapNode) }
            def bootstrap_node; end

            sig { returns(T::Boolean) }
            def bootstrap_node_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedis) }
            def redis; end

            sig { returns(T::Boolean) }
            def redis_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecAuth) }
            def auth; end

            sig { returns(T::Boolean) }
            def auth_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def label_whitelist(val = nil); end
          end

          class RedisFailoverSpecAuth < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def secret_path(val = nil); end
          end

          class RedisFailoverSpecBootstrapNode < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def host(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def allow_sentinels(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def port(val = nil); end
          end

          class RedisFailoverSpecRedis < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def dns_policy(val = nil); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def pod_annotations(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def image(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def host_network(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporter) }
            def exporter; end

            sig { returns(T::Boolean) }
            def exporter_present?; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def node_selector(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def priority_class_name(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContext) }
            def security_context; end

            sig { returns(T::Boolean) }
            def security_context_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorage) }
            def storage; end

            sig { returns(T::Boolean) }
            def storage_present?; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisCustomCommandRenames))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisCustomCommandRenames]) }
            def custom_command_renames(elem_name = nil, &block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def custom_config(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinity) }
            def affinity; end

            sig { returns(T::Boolean) }
            def affinity_present?; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisTolerations))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisTolerations]) }
            def tolerations(elem_name = nil, &block); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisResources) }
            def resources; end

            sig { returns(T::Boolean) }
            def resources_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def shutdown_config_map(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def termination_grace_period(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def service_account_name(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def replicas(val = nil); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def service_annotations(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def command(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def image_pull_policy(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisImagePullSecrets))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisImagePullSecrets]) }
            def image_pull_secrets(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinity) }
            def pod_affinity; end

            sig { returns(T::Boolean) }
            def pod_affinity_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinity) }
            def node_affinity; end

            sig { returns(T::Boolean) }
            def node_affinity_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinity) }
            def pod_anti_affinity; end

            sig { returns(T::Boolean) }
            def pod_anti_affinity_present?; end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution) }
            def required_during_scheduling_ignored_during_execution; end

            sig { returns(T::Boolean) }
            def required_during_scheduling_ignored_during_execution_present?; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields]) }
            def match_fields(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference) }
            def preference; end

            sig { returns(T::Boolean) }
            def preference_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms]) }
            def node_selector_terms(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields]) }
            def match_fields(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution]) }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            sig { returns(T::Boolean) }
            def pod_affinity_term_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution]) }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            sig { returns(T::Boolean) }
            def pod_affinity_term_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisCustomCommandRenames < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def to(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def from(val = nil); end
          end

          class RedisFailoverSpecRedisExporter < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def image(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def args(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def enabled(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnv))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnv]) }
            def envs(elem_name = nil, &block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def image_pull_policy(val = nil); end
          end

          class RedisFailoverSpecRedisExporterEnv < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnvValueFrom) }
            def value_from; end

            sig { returns(T::Boolean) }
            def value_from_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end
          end

          class RedisFailoverSpecRedisExporterEnvValueFrom < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnvValueFromSecretKeyRef) }
            def secret_key_ref; end

            sig { returns(T::Boolean) }
            def secret_key_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnvValueFromFieldRef) }
            def field_ref; end

            sig { returns(T::Boolean) }
            def field_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnvValueFromResourceFieldRef) }
            def resource_field_ref; end

            sig { returns(T::Boolean) }
            def resource_field_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisExporterEnvValueFromConfigMapKeyRef) }
            def config_map_key_ref; end

            sig { returns(T::Boolean) }
            def config_map_key_ref_present?; end
          end

          class RedisFailoverSpecRedisExporterEnvValueFromConfigMapKeyRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def optional(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisExporterEnvValueFromFieldRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def field_path(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end
          end

          class RedisFailoverSpecRedisExporterEnvValueFromResourceFieldRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def container_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def resource(val = nil); end
          end

          class RedisFailoverSpecRedisExporterEnvValueFromSecretKeyRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def optional(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisImagePullSecrets < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end
          end

          class RedisFailoverSpecRedisResources < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def requests(&block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def limits(&block); end
          end

          class RedisFailoverSpecRedisSecurityContext < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSeccompProfile) }
            def seccomp_profile; end

            sig { returns(T::Boolean) }
            def seccomp_profile_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def run_as_group(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def run_as_user(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def supplemental_groups(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def fs_group(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSysctls))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSysctls]) }
            def sysctls(elem_name = nil, &block); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def run_as_non_root(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextWindowsOptions) }
            def windows_options; end

            sig { returns(T::Boolean) }
            def windows_options_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSeLinuxOptions) }
            def se_linux_options; end

            sig { returns(T::Boolean) }
            def se_linux_options_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def fs_group_change_policy(val = nil); end
          end

          class RedisFailoverSpecRedisSecurityContextSeLinuxOptions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def role(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def user(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def level(val = nil); end
          end

          class RedisFailoverSpecRedisSecurityContextSeccompProfile < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def localhost_profile(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end
          end

          class RedisFailoverSpecRedisSecurityContextSysctls < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end
          end

          class RedisFailoverSpecRedisSecurityContextWindowsOptions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def run_as_user_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def gmsa_credential_spec(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def gmsa_credential_spec_name(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def host_process(val = nil); end
          end

          class RedisFailoverSpecRedisStorage < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStorageEmptyDir) }
            def empty_dir; end

            sig { returns(T::Boolean) }
            def empty_dir_present?; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def keep_after_deletion(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaim) }
            def persistent_volume_claim; end

            sig { returns(T::Boolean) }
            def persistent_volume_claim_present?; end
          end

          class RedisFailoverSpecRedisStorageEmptyDir < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def medium(val = nil); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaim < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatus) }
            def status; end

            sig { returns(T::Boolean) }
            def status_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def kind(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpec) }
            def spec; end

            sig { returns(T::Boolean) }
            def spec_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimMetadata) }
            def metadata; end

            sig { returns(T::Boolean) }
            def metadata_present?; end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimMetadata < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def labels(&block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def annotations(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpec < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def storage_class_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def volume_mode(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelector) }
            def selector; end

            sig { returns(T::Boolean) }
            def selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def access_modes(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSourceRef) }
            def data_source_ref; end

            sig { returns(T::Boolean) }
            def data_source_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSource) }
            def data_source; end

            sig { returns(T::Boolean) }
            def data_source_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def volume_name(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecResources) }
            def resources; end

            sig { returns(T::Boolean) }
            def resources_present?; end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSource < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_group(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def kind(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecDataSourceRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_group(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def kind(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecResources < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def requests(&block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def limits(&block); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimSpecSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimStatus < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def phase(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def access_modes(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatusConditions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisStoragePersistentVolumeClaimStatusConditions]) }
            def conditions(elem_name = nil, &block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def capacity(&block); end
          end

          class RedisFailoverSpecRedisStoragePersistentVolumeClaimStatusConditions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def status(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def last_transition_time(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def reason(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def last_probe_time(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def message(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end
          end

          class RedisFailoverSpecRedisTolerations < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def toleration_seconds(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def effect(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinel < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def priority_class_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def dns_policy(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporter) }
            def exporter; end

            sig { returns(T::Boolean) }
            def exporter_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContext) }
            def security_context; end

            sig { returns(T::Boolean) }
            def security_context_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def service_account_name(val = nil); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def pod_annotations(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def image(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def host_network(val = nil); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def node_selector(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelTolerations))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelTolerations]) }
            def tolerations(elem_name = nil, &block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def service_annotations(&block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def command(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def replicas(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def image_pull_policy(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinity) }
            def affinity; end

            sig { returns(T::Boolean) }
            def affinity_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def custom_config(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelImagePullSecrets))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelImagePullSecrets]) }
            def image_pull_secrets(elem_name = nil, &block); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelResources) }
            def resources; end

            sig { returns(T::Boolean) }
            def resources_present?; end
          end

          class RedisFailoverSpecSentinelAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinity) }
            def pod_affinity; end

            sig { returns(T::Boolean) }
            def pod_affinity_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinity) }
            def node_affinity; end

            sig { returns(T::Boolean) }
            def node_affinity_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinity) }
            def pod_anti_affinity; end

            sig { returns(T::Boolean) }
            def pod_anti_affinity_present?; end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution) }
            def required_during_scheduling_ignored_during_execution; end

            sig { returns(T::Boolean) }
            def required_during_scheduling_ignored_during_execution_present?; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields]) }
            def match_fields(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchFields < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreferenceMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityPreferredDuringSchedulingIgnoredDuringExecutionPreference) }
            def preference; end

            sig { returns(T::Boolean) }
            def preference_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields]) }
            def match_fields(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTermsMatchFields < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityNodeAffinityRequiredDuringSchedulingIgnoredDuringExecutionNodeSelectorTerms]) }
            def node_selector_terms(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution]) }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            sig { returns(T::Boolean) }
            def pod_affinity_term_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinity < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution]) }
            def required_during_scheduling_ignored_during_executions(elem_name = nil, &block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution]) }
            def preferred_during_scheduling_ignored_during_executions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm) }
            def pod_affinity_term; end

            sig { returns(T::Boolean) }
            def pod_affinity_term_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def weight(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTerm < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecutionPodAffinityTermLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector) }
            def namespace_selector; end

            sig { returns(T::Boolean) }
            def namespace_selector_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector) }
            def label_selector; end

            sig { returns(T::Boolean) }
            def label_selector_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def namespaces(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def topology_key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelector < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def match_labels(&block); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions]) }
            def match_expressions(elem_name = nil, &block); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionLabelSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelAffinityPodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecutionNamespaceSelectorMatchExpressions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def values(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelExporter < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def image(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def args(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def enabled(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnv))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnv]) }
            def envs(elem_name = nil, &block); end

            sig { params(val: T.nilable(String)).returns(String) }
            def image_pull_policy(val = nil); end
          end

          class RedisFailoverSpecSentinelExporterEnv < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFrom) }
            def value_from; end

            sig { returns(T::Boolean) }
            def value_from_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end
          end

          class RedisFailoverSpecSentinelExporterEnvValueFrom < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromSecretKeyRef) }
            def secret_key_ref; end

            sig { returns(T::Boolean) }
            def secret_key_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromFieldRef) }
            def field_ref; end

            sig { returns(T::Boolean) }
            def field_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromResourceFieldRef) }
            def resource_field_ref; end

            sig { returns(T::Boolean) }
            def resource_field_ref_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelExporterEnvValueFromConfigMapKeyRef) }
            def config_map_key_ref; end

            sig { returns(T::Boolean) }
            def config_map_key_ref_present?; end
          end

          class RedisFailoverSpecSentinelExporterEnvValueFromConfigMapKeyRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def optional(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelExporterEnvValueFromFieldRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def field_path(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def api_version(val = nil); end
          end

          class RedisFailoverSpecSentinelExporterEnvValueFromResourceFieldRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def container_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def resource(val = nil); end
          end

          class RedisFailoverSpecSentinelExporterEnvValueFromSecretKeyRef < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def optional(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end

          class RedisFailoverSpecSentinelImagePullSecrets < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end
          end

          class RedisFailoverSpecSentinelResources < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def requests(&block); end

            sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
            def limits(&block); end
          end

          class RedisFailoverSpecSentinelSecurityContext < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContextSeccompProfile) }
            def seccomp_profile; end

            sig { returns(T::Boolean) }
            def seccomp_profile_present?; end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def run_as_group(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def run_as_user(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def supplemental_groups(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def fs_group(val = nil); end

            sig { params(elem_name: T.nilable(Symbol), block: T.nilable(T.proc.returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContextSysctls))).returns(T::Array[Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContextSysctls]) }
            def sysctls(elem_name = nil, &block); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def run_as_non_root(val = nil); end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContextWindowsOptions) }
            def windows_options; end

            sig { returns(T::Boolean) }
            def windows_options_present?; end

            sig { returns(Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecSentinelSecurityContextSeLinuxOptions) }
            def se_linux_options; end

            sig { returns(T::Boolean) }
            def se_linux_options_present?; end

            sig { params(val: T.nilable(String)).returns(String) }
            def fs_group_change_policy(val = nil); end
          end

          class RedisFailoverSpecSentinelSecurityContextSeLinuxOptions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def role(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def user(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def level(val = nil); end
          end

          class RedisFailoverSpecSentinelSecurityContextSeccompProfile < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def localhost_profile(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def type(val = nil); end
          end

          class RedisFailoverSpecSentinelSecurityContextSysctls < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end
          end

          class RedisFailoverSpecSentinelSecurityContextWindowsOptions < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def run_as_user_name(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def gmsa_credential_spec(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def gmsa_credential_spec_name(val = nil); end

            sig { params(val: T.nilable(T::Boolean)).returns(T::Boolean) }
            def host_process(val = nil); end
          end

          class RedisFailoverSpecSentinelTolerations < ::KubeDSL::DSLObject
            include KubeDSL::ValueFields::InstanceMethods
            extend KubeDSL::ValueFields::ClassMethods
            extend KubeDSL::Validations::ClassMethods

            sig { returns(T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]) }
            def serialize; end

            sig { returns(Symbol) }
            def kind_sym; end

            sig { params(val: T.nilable(String)).returns(String) }
            def operator(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def value(val = nil); end

            sig { params(val: T.nilable(Integer)).returns(Integer) }
            def toleration_seconds(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def effect(val = nil); end

            sig { params(val: T.nilable(String)).returns(String) }
            def key(val = nil); end
          end
        end
      end
    end
  end
end
