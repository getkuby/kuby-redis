require 'kuby'
require 'kuby/redis/plugin'
require 'kuby/redis/entrypoint'

module Kuby
  module Redis
    autoload :DSL,      'kuby/redis/dsl'
    autoload :Instance, 'kuby/redis/instance'

    extend Entrypoint
  end
end

Kuby.register_plugin(:redis, Kuby::Redis::Plugin)
