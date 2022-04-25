require 'kube-dsl'

module Kuby
  module Redis
    class Instance
      PORT = 26379

      extend ::KubeDSL::ValueFields

      attr_reader :name, :environment

      value_field :cpu_request, default: '100m'.freeze
      value_field :memory_request, default: '100Mi'.freeze
      value_field :cpu_limit, default: '400m'.freeze
      value_field :memory_limit, default: '500Mi'

      value_field :sentinel_replicas, default: 1
      value_field :redis_replicas, default: 1

      value_field :storage_access_modes, default: ['ReadWriteOnce'.freeze].freeze
      value_field :storage, default: '1Gi'.freeze

      def initialize(name, environment)
        @name = "#{environment.kubernetes.selector_app}-#{name}"
        @environment = environment
      end

      def resources
        @resources ||= [redis]
      end

      def service_name
        @service_name ||= "rfs-#{name}"
      end

      def service_port
        PORT
      end

      # https://github.com/spotahome/redis-operator#connection-to-the-created-redis-failovers
      # The return value of this method is suitable for passing into `Redis.new` from the
      # redis-rb gem.
      def connection_params
        {
          sentinels: [{ host: service_name, port: service_port }],
          url: 'redis://mymaster'
        }
      end

      def custom_config(*args)
        redis.spec.redis.custom_config(*args)
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
                  add :cpu, context.cpu_request
                  add :memory, context.memory_request
                end

                limits do
                  add :cpu, context.cpu_limit
                  add :memory, context.memory_limit
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
