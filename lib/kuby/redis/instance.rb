require 'kube-dsl'

module Kuby
  module Redis
    class Instance
      extend ::KubeDSL::ValueFields

      attr_reader :name, :environment

      value_field :version, default: '5.0.3-v1'
      value_field :storage_class_name, default: -> (inst) { inst.kubernetes.provider.storage_class_name }
      value_field :storage_type, default: 'Durable'
      value_field :storage, default: '1Gi'
      value_field :access_modes, default: ['ReadWriteOnce']
      value_field :port, default: 6379

      def initialize(name, environment)
        @name = name
        @environment = environment
      end

      def resources
        @resources ||= [redis]
      end

      def hostname
        name
      end

      def url
        @url ||= "redis://#{hostname}:#{port}/0"
      end

      def redis(&block)
        context = self

        @redis ||= Kuby::KubeDB.redis do
          api_version 'kubedb.com/v1alpha1'

          metadata do
            name "#{context.name}-redis"
            namespace context.kubernetes.namespace.metadata.name
          end

          spec do
            version context.version
            storage_type context.storage_type

            storage do
              storage_class_name context.storage_class_name
              access_modes context.access_modes

              resources do
                requests do
                  add :storage, context.storage
                end
              end
            end

            service_template do
              spec do
                type 'NodePort'
                port do
                  name 'memcached'
                  port context.port
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
