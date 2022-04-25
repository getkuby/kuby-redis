**NOTE**: The documentation below refers to an unreleased version of kuby-redis. Please [click here](https://github.com/getkuby/kuby-redis/blob/v0.1.0/README.md) for the documentation for the currently released version.

## kuby-redis

Redis plugin for [Kuby](https://github.com/getkuby/kuby-core).

## Intro

The redis plugin provides the ability to stand up arbitrary redis instances. Behind the scenes it uses the excellent [Spotahome Redis operator](https://github.com/spotahome/redis-operator).

## Configuration

Add the kuby-redis gem to your Gemfile and run the setup command, eg:

```bash
bundle exec kuby -e production setup
```

Add a Redis instance like this:

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

The kuby-redis plugin supports a number of additional configuration options:

* `cpu_request`, (default: `'100m'`). The number of CPU units to request from Kubernetes. 1 CPU core = 1000 units.
* `memory_request`, (default: `'100Mi'`). The amount of memory to request from Kubernetes.
* `cpu_limit`, (default: `'400m'`). A limit on the number of CPU units the Redis instance may consume. 1 CPU core = 1000 units.
* `memory_limit`, (default: `'500Mi'`). A limit on the amount of memory the Redis instance may consume.
* `sentinel_replicas` (default: `1`). The number of [Redis sentinels](https://redis.io/docs/manual/sentinel/) to run.
* `redis_replicas` (default: `1`). The number of replicated Redis servers to run. For a highly-available configuration, set this option to a value >= 3.
* `storage_access_modes`, (default: `['ReadWriteOnce']`). An array of Kubernetes [storage access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) for the persistent volume that the Redis instance will use to persist data.
* `storage`, (default: `'1Gi'`). The amount of persistent storage to request. Note that this is not a Redis memory limit, but rather a request for an amount of persistent (i.e. disk-based) storage Redis will write to. Persistent storage is necessary to prevent data loss if/when an individual Redis instance fails.

**NOTE**: All memory amounts must be strings parseable by Go's [go-units module](https://pkg.go.dev/github.com/docker/go-units#example-FromHumanSize). Valid examples include '100Mi' (100 megabytes) and '2Gb' (2 gigabytes).

Example:

```ruby
Kuby.define(:production) do
  kubernetes do

    add_plugin(:redis) do
      instance(:my_rails_cache) do
        # Launch three redis replicas (this is the recommended configuration
        # for high availability).
        redis_replicas 3

        # The amount of persistent storage to request.
        storage '5Gi'
      end
    end

  end
end
```

## Usage

Redis instances defined in your Kuby config respond to the `#service_name`, `#service_port`, and `#connection_params` methods to facilitate connecting to them from your Rails app. One caveat is that clients must be [sentinel-aware](https://redis.io/docs/reference/sentinel-clients/), but for the most part users won't have to worry about this since the redis-rb gem [supports sentinel configurations](https://github.com/redis/redis-rb#sentinel-support).

### Rails Cache

In your Rails config (eg. config/environments/production.rb), point your cache store at your redis instance like so:

```ruby
# make sure Kuby config is loaded
Kuby.load!

redis_instance = Kuby.environment.kubernetes
  .plugin(:redis)
  .instance(:my_rails_cache)

config.cache_store = :redis_cache_store, redis_instance.connection_params
```

### Redis Gem

You can also use a redis client like the [Redis gem](https://github.com/redis/redis-rb) directly:

```ruby
# make sure Kuby config is loaded
Kuby.load!

require 'redis'

redis_instance = Kuby.environment.kubernetes
  .plugin(:redis)
  .instance(:my_rails_cache)

redis = Redis.new(**redis_instance.connection_params)
```

## License

Licensed under the MIT license. See LICENSE for details.

## Authors

* Cameron C. Dutro: http://github.com/camertron
