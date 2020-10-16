require 'kuby'
require 'kuby/redis/plugin'

module Kuby
  module Redis
    autoload :Instance, 'kuby/redis/instance'
  end
end

Kuby.register_plugin(:redis, Kuby::Redis::Plugin)
