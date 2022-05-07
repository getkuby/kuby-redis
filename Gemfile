source 'https://rubygems.org'

gemspec

gem 'kuby-core', path: '../kuby-core'

group :development, :test do
  gem 'sorbet'
  gem 'sorbet-runtime'
  gem 'tapioca', '~> 0.7'
  gem 'parlour', github: 'camertron/parlour', branch: 'initialize_void'
  gem 'pry-byebug'
  gem 'rake'
end

group :test do
  gem 'rspec', '~> 3.0'
end
