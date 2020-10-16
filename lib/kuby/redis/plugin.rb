require 'kuby'

module Kuby
  module Redis
    class Plugin < ::Kuby::Plugin
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

      private

      def instances
        @instances ||= {}
      end
    end
  end
end
