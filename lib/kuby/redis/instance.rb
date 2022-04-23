require 'kube-dsl'

module Kuby
  module Redis
    class Instance
      PORT = 26379

      extend ::KubeDSL::ValueFields

      attr_reader :name, :environment

      value_field :sentinel_replicas, default: 1
      value_field :redis_replicas, default: 1

      value_field :storage_access_modes, default: ['ReadWriteOnce']
      value_field :storage_type, default: 'Durable'
      value_field :storage, default: '1Gi'

      def initialize(name, environment)
        @name = "#{environment.kubernetes.selector_app}-#{name}"
        @environment = environment
      end

      def resources
        @resources ||= [redis]
      end

      def hostname
        @hostname ||= "rfs-#{name}"
      end

      def url
        @url ||= "redis://#{hostname}:#{PORT}/0"
      end

      def redis(&block)
        context = self

        @redis ||= Kuby::Redis.redis_failover do
          api_version 'databases.spotahome.com/v1'

          metadata do
            name context.name
            namespace context.kubernetes.namespace.metadata.name
          end

          spec do
            sentinel do
              replicas context.sentinel_replicas

              resources do
                requests do
                  add :cpu, '100m'
                end

                limits do
                  add :memory, '100Mi'
                end
              end
            end

            redis do
              replicas context.redis_replicas

              storage do
                keep_after_deletion true

                persistent_volume_claim do
                  metadata do
                    name "#{context.name}-pvc"
                  end

                  spec do
                    access_modes context.storage_access_modes

                    resources do
                      requests do
                        add :storage, context.storage
                      end
                    end
                  end
                end
              end

              resources do
                requests do
                  add :cpu, '100m'
                  add :memory, '100Mi'
                end

                limits do
                  add :cpu, '400m'
                  add :memory, '500Mi'
                end
              end
            end
          end
        end

        @redis.instance_eval(&block) if block
        @redis
      end

      def kubernetes
        environment.kubernetes
      end
    end
  end
end
