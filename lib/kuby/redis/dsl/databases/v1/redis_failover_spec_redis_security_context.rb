# typed: true

module Kuby
  module Redis
    module DSL
      module Databases
        module V1
          class RedisFailoverSpecRedisSecurityContext < ::KubeDSL::DSLObject
            object_field(:seccomp_profile) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSeccompProfile.new }
            value_field :run_as_group
            value_field :run_as_user
            value_field :supplemental_groups
            value_field :fs_group
            array_field(:sysctl) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSysctls.new }
            value_field :run_as_non_root
            object_field(:windows_options) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextWindowsOptions.new }
            object_field(:se_linux_options) { Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSeLinuxOptions.new }
            value_field :fs_group_change_policy

            validates :seccomp_profile, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSeccompProfile }
            validates :run_as_group, field: { format: :integer }, presence: true
            validates :run_as_user, field: { format: :integer }, presence: true
            validates :supplemental_groups, field: { format: :integer }, presence: false
            validates :fs_group, field: { format: :integer }, presence: true
            validates :sysctls, array: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSysctls }, presence: false
            validates :run_as_non_root, field: { format: :boolean }, presence: true
            validates :windows_options, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextWindowsOptions }
            validates :se_linux_options, object: { kind_of: Kuby::Redis::DSL::Databases::V1::RedisFailoverSpecRedisSecurityContextSeLinuxOptions }
            validates :fs_group_change_policy, field: { format: :string }, presence: false

            def serialize
              {}.tap do |result|
                result[:seccompProfile] = seccomp_profile.serialize
                result[:runAsGroup] = run_as_group
                result[:runAsUser] = run_as_user
                result[:supplementalGroups] = supplemental_groups
                result[:fsGroup] = fs_group
                result[:sysctls] = sysctls.map(&:serialize)
                result[:runAsNonRoot] = run_as_non_root
                result[:windowsOptions] = windows_options.serialize
                result[:seLinuxOptions] = se_linux_options.serialize
                result[:fsGroupChangePolicy] = fs_group_change_policy
              end
            end

            def kind_sym
              :redis_failover_spec_redis_security_context
            end
          end
        end
      end
    end
  end
end