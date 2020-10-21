## kuby-redis

Redis plugin for [Kuby](https://github.com/getkuby/kuby-core).

## Intro

The redis plugin provides the ability to stand up arbitrary redis instances. Behind the scenes it uses the excellent [kubedb](https://kubedb.com/) Kubernetes operator.

## Configuration

Add the kuby-redis gem to your Gemfile, then add a redis instance like this:

```ruby
require 'kuby/redis'

Kuby.define(:production) do
  kubernetes do

    add_plugin(:redis) do
      instance(:my_rails_cache)
    end

  end
end
```

The kuby-redis plugin allows a number of additional configuration options too:


value_field :storage_type, default: 'Durable'
value_field :storage, default: '1Gi'
value_field :access_modes, default: ['ReadWriteOnce']


```ruby
Kuby.define(:production) do
  kubernetes do

    add_plugin(:redis) do
      instance(:my_rails_cache) do
        # set the version of redis you want to use
        version '5.0.3-v1'  # this is the default version

        # set the port redis listen on and that you'll
        # use to connect to the instance
        port 6379  # this is the default port

        # the amount of durable storage to allocate
        storage '1Gi'
      end
    end

  end
end
```

Get a list of the redis versions your cluster supports by running:

```bash
bundle exec kuby -e production kubectl -- get redisversions
```

## Usage

Redis instances defined in your Kuby config respond to `#hostname`, `#port`, and `#url` methods to help point at them in your Rails configuration. The `#url` method returns a complete URL to the redis instance, including the host and port.

### Rails Cache

In your Rails config (eg. config/environments/production.rb), point your cache store at your redis instance like so:


```ruby
Kuby.load!

url = Kuby.environment.kubernetes
  .plugin(:redis)
  .instance(:my_rails_cache)
  .url

config.cache_store = :redis_cache_store, { url: url }
```

### Redis Gem

You can also use a redis client like the [Redis gem](https://github.com/redis/redis-rb) directly:

```ruby
require 'redis'

url = Kuby.environment.kubernetes
  .plugin(:redis)
  .instance(:my_rails_cache)
  .url

redis = Redis.new(url: url)
redis.set('abc', 123)
value = redis.get('abc')
```

## License

Licensed under the MIT license. See LICENSE for details.

## Authors

* Cameron C. Dutro: http://github.com/camertron
