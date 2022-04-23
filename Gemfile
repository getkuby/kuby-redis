source 'https://rubygems.org'

gemspec

gem 'kuby-core', path: '../kuby-core'
gem 'kube-dsl', path: '../kube-dsl'
gem 'kuby-crdb', path: '../kuby-crdb'
gem 'kuby-kind', path: '../kuby-kind'
gem 'helm-cli', path: '../helm-cli'

# TODO: remove me
gem 'sorbet-runtime'

group :development, :test do
  gem 'pry-byebug'
  gem 'rake'
end

group :test do
  gem 'rspec', '~> 3.0'
end
