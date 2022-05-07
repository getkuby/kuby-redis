$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'kuby/redis/version'

Gem::Specification.new do |s|
  s.name     = 'kuby-redis'
  s.version  = ::Kuby::Redis::VERSION
  s.authors  = ['Cameron Dutro']
  s.email    = ['camertron@gmail.com']
  s.homepage = 'http://github.com/getkuby/kuby-redis'

  s.description = s.summary = 'Redis plugin for Kuby.'

  s.platform = Gem::Platform::RUBY

  s.add_dependency 'kuby-core', '>= 0.16.0', '< 1.0'
  s.add_dependency 'kube-dsl', '~> 0.7'
  s.add_dependency 'helm-cli', '~> 0.3'

  s.require_path = 'lib'
  s.files = Dir['{lib,spec}/**/*', 'Gemfile', 'LICENSE', 'CHANGELOG.md', 'README.md', 'Rakefile', 'kuby-redis.gemspec']
end
