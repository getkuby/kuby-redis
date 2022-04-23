require 'kuby'
require 'helm-cli'

module Kuby
  module Redis
    class Plugin < ::Kuby::Plugin
      REPO_NAME = 'redis-operator'.freeze
      REPO_URL = 'https://spotahome.github.io/redis-operator'.freeze

      CHART_NAME = 'redis-operator/redis-operator'.freeze
      CHART_VERSION = '3.1.4'.freeze
      RELEASE_NAME = 'redis-operator'.freeze
      NAMESPACE = 'kube-system'.freeze

      WAIT_INTERVAL = 5  # seconds
      WAIT_MAX = 120     # seconds

      def configure(&block)
        instance_eval(&block) if block
      end

      def instance(name, &block)
        instances[name] ||= Instance.new(name, environment)
        instances[name].instance_eval(&block) if block
        instances[name]
      end

      def resources
        instances.flat_map { |_, instance| instance.resources }
      end

      def setup
        Kuby.logger.info('Setting up the Redis operator')

        Kuby.logger.info("Updating the #{REPO_NAME} Helm repository")
        helm_cli.add_repo(REPO_NAME, REPO_URL)
        helm_cli.update_repos

        Kuby.logger.info('Deploying the Redis operator')
        operator_deployed? ? upgrade_operator : install_operator

        wait_for_api_resources do
          Kuby.logger.info('Waiting for API resources to become available')
        end

        Kuby.logger.info('Redis operator setup finished')
      end

      private

      def install_operator
        helm_cli.install_chart(CHART_NAME,
          release: RELEASE_NAME,
          version: CHART_VERSION,
          namespace: NAMESPACE
        )
      end

      def upgrade_operator
        helm_cli.upgrade_chart(CHART_NAME,
          release: RELEASE_NAME,
          version: CHART_VERSION,
          namespace: NAMESPACE
        )
      end

      def wait_for_api_resources
        time_elapsed = 0

        loop do
          begin
            if time_elapsed >= WAIT_MAX
              raise APIResourcesError, 'timeout waiting for API resources to '\
                "become available. Waited #{time_elapsed}s."
            end

            kubernetes_cli.api_resources
            break
          rescue KubernetesCLI::KubernetesError
            yield
            sleep WAIT_INTERVAL
            time_elapsed += WAIT_INTERVAL
          end
        end
      end

      def instances
        @instances ||= {}
      end

      def operator_deployed?
        helm_cli.release_exists?(RELEASE_NAME, namespace: NAMESPACE)
      end

      def kubernetes_cli
        provider.kubernetes_cli
      end

      def helm_cli
        provider.helm_cli
      end

      def provider
        environment.kubernetes.provider
      end
    end
  end
end
