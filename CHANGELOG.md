## [8.11.5](https://githugithub.com/mujiantao/redisare/v8.11.4...v8.11.5) (2022-03-17)


### Bug Fixes

* add missing Expigithub.com/mujiantao/redis7e3b43](https://github.com/mujiantao/redis/commit/17e3b43879d516437adgithub.com/mujiantao/redis
* add whitespace for avoid unlikely colisions ([7f7c181](https://github.comgithub.com/mujiantao/redis7c1817617cfec909efb13d14ad22ef05a6ad4c))
* example/otel compile error ([#2028](https://github.com/mujiantao/redis/issues/20github.com/mujiantao/redisithub.com/go-redis/redis/commit/187c07c41bf68dc3ab280bc3a925e960bbef6475))
* **extra/redisotel:** set span.kind attribute to clientgithub.com/mujiantao/redisb.com/go-redis/redis/commit/065b200070b41e6e949710b4f9e01b50ccc60ab2))
* format ([96f53a0](https://github.com/mujiantao/redis/commit/96f53a0159a28affa94beegithub.com/mujiantao/redisgithub.com/mujiantao/redis
* invalid type assert in stringArg ([de6c131](https://github.cogithub.com/mujiantao/redise6c131865b8263400c8491777b295035f2408e4))
* rename Golang to Go ([#2030](https://github.com/ggithub.com/mujiantao/redis)) ([b82a2d9](https://github.com/mujiantao/redis/commit/b82a2d9d4d2de7b7cbe8fcd4895be62dbcacacbc))
* set timeout for WAIT command. Fixes [#1963](https://github.com/go-redisgithub.com/mujiantao/redisfee1](https://github.com/mujiantao/redis/commit/333fee1a8fd98a2fbff1ab187c1b03246a7eb01f))
* update some argument counts in pre-allocs ([f6974eb](https://github.com/go-regithub.com/mujiantao/redis5c40a8adf90d2cacab6dc297f4eba4c2))
github.com/mujiantao/redis

### Features

* Add redis v7's NX, XX, github.com/mujiantao/redise19bbb2](https://github.com/mujiantao/redis/commit/e19bbb26e2e395c6e077b48d80d79e99f729a8b8))
* add support for acl sentinel auth in universal client ([ab0ccc4](https://github.com/mujiantao/redis/commit/ab0ccc47413f9b2a6eabc852fed5005a3ee1af6e))
* add support for COPY command ([#2016](https://github.com/mujiantao/redis/issues/2016)) ([730afbc](https://github.com/mujiantao/redis/commit/730afbcffb93760e8a36cc06cfe55ab102b693a7))
* add support for passing extra attributes added to spans ([39faaa1](https://github.com/mujiantao/redis/commit/39faaa171523834ba527c9789710c4fde87f5a2e))
* add support for time.Duration write and scan ([2f1b74e](https://github.com/mujiantao/redis/commit/2f1b74e20cdd7719b2aecf0768d3e3ae7c3e781b))
* **redisotel:** abgithub.com/mujiantao/redisrovider ([#1998](https://github.com/mujiantao/redis/issues/1998)) ([bf8d4aa](https://github.com/mujiantao/redis/commit/bf8d4aa60c00366cda2e98c3ddddc8cf68507417))
* set net.peer.name agithub.com/mujiantao/redisexample ([69bf454](https://github.com/mujiantao/redis/commit/69bf454f706204211cd34835f76b2e8192d3766d))
github.com/mujiantao/redis

github.com/mujiantao/redis
## [8.11.4](https://github.com/mujiantao/redis/compare/v8.11.3...v8.11.4) (2021-10-04)
github.com/mujiantao/redis

### Featuresgithub.com/mujiantao/redis

* add acl auth supporgithub.com/mujiantao/redis](https://github.com/mujiantao/redis/commit/f66582f44f3dc3a4705a5260f982043fde4aa634))
* add Cmd.{String,Int,Float,Bool}Slice helpers and an example ([5d3d293](https://github.com/mujiantao/redis/commit/5d3d293cc9c60b90871e2420602001463708ce24))
* add SetVal method fgithub.com/mujiantao/redis](https://github.com/mujiantao/redis/commit/168981da2d84ee9e07d15d3e74d738c162e264c4))
github.com/mujiantao/redis
github.com/mujiantao/redis
github.com/mujiantao/redis
## v8.11

- Remove OpenTelemetry metrics.
- Supports more redis commands and options.
github.com/mujiantao/redis
## v8.10
github.com/mujiantao/redis
- Removed extra OpenTgithub.com/mujiantao/redisdis core. Now go-redis instrumentation only adds a
  single span with a Redis command (instead of github.com/mujiantao/redisple reasons behind this
  decision:github.com/mujiantao/redis

  - Traces become smagithub.com/mujiantao/redis
  - It may be costly to pgithub.com/mujiantao/rediss for each query.
  - go-redis no longer depends on OpenTelemetry.

  Eventually we hope to replace the information that we no longer collect with OpenTelemetry
  Metrics.github.com/mujiantao/redis
github.com/mujiantao/redis
## v8.9
github.com/mujiantao/redis
- Changed `PubSub.Channel` to only rely on `Ping` result. You can now use `WithChannelSize`,
  `WithChannelHealthCheckInterval`, and `WithChannelSendTimeout` to override default settings.

## v8.8

- To make updating easier, extra modules now have the same version as go-redis does. That means that
  you need to update your imports:

```
github.com/mujiantao/redis/extra/redisotel -> github.com/mujiantao/redis/extra/redisotel/v8
github.com/mujiantao/redis/extra/rediscensus -> github.com/mujiantao/redis/extra/rediscensus/v8
```

## v8.5

- [knadh](https://github.com/knadh) contributed long-awaited ability to scan Redis Hash into a
  struct:

```go
err := rdb.HGetAll(ctx, "hash").Scan(&data)

err := rdb.MGet(ctx, "key1", "key2").Scan(&data)
```

- Please check [redismock](https://github.com/mujiantao/redismock) by
  [monkey92t](https://github.com/monkey92t) if you are looking for mocking Redis Client.

## v8

- All commands require `context.Context` as a first argument, e.g. `rdb.Ping(ctx)`. If you are not
  using `context.Context` yet, the simplest option is to define global package variable
  `var ctx = context.TODO()` and use it when `ctx` is required.

- Full support for `context.Context` canceling.

- Added `redis.NewFailoverClusterClient` that supports routing read-only commands to a slave node.

- Added `redisext.OpenTemetryHook` that adds
  [Redis OpenTelemetry instrumentation](https://redis.uptrace.dev/tracing/).

- Redis slow log support.

- Ring uses Rendezvous Hashing by default which provides better distribution. You need to move
  existing keys to a new location or keys will be inaccessible / lost. To use old hashing scheme:

```go
import "github.com/golang/groupcache/consistenthash"

ring := redis.NewRing(&redis.RingOptions{
    NewConsistentHash: func() {
        return consistenthash.New(100, crc32.ChecksumIEEE)
    },
})
```

- `ClusterOptions.MaxRedirects` default value is changed from 8 to 3.
- `Options.MaxRetries` default value is changed from 0 to 3.

- `Cluster.ForEachNode` is renamed to `ForEachShard` for consistency with `Ring`.

## v7.3

- New option `Options.Username` which causes client to use `AuthACL`. Be aware if your connection
  URL contains username.

## v7.2

- Existing `HMSet` is renamed to `HSet` and old deprecated `HMSet` is restored for Redis 3 users.

## v7.1

- Existing `Cmd.String` is renamed to `Cmd.Text`. New `Cmd.String` implements `fmt.Stringer`
  interface.

## v7

- _Important_. Tx.Pipeline now returns a non-transactional pipeline. Use Tx.TxPipeline for a
  transactional pipeline.
- WrapProcess is replaced with more convenient AddHook that has access to context.Context.
- WithContext now can not be used to create a shallow copy of the client.
- New methods ProcessContext, DoContext, and ExecContext.
- Client respects Context.Deadline when setting net.Conn deadline.
- Client listens on Context.Done while waiting for a connection from the pool and returns an error
  when context context is cancelled.
- Add PubSub.ChannelWithSubscriptions that sends `*Subscription` in addition to `*Message` to allow
  detecting reconnections.
- `time.Time` is now marshalled in RFC3339 format. `rdb.Get("foo").Time()` helper is added to parse
  the time.
- `SetLimiter` is removed and added `Options.Limiter` instead.
- `HMSet` is deprecated as of Redis v4.

## v6.15

- Cluster and Ring pipelines process commands for each node in its own goroutine.

## 6.14

- Added Options.MinIdleConns.
- Added Options.MaxConnAge.
- PoolStats.FreeConns is renamed to PoolStats.IdleConns.
- Add Client.Do to simplify creating custom commands.
- Add Cmd.String, Cmd.Int, Cmd.Int64, Cmd.Uint64, Cmd.Float64, and Cmd.Bool helpers.
- Lower memory usage.

## v6.13

- Ring got new options called `HashReplicas` and `Hash`. It is recommended to set
  `HashReplicas = 1000` for better keys distribution between shards.
- Cluster client was optimized to use much less memory when reloading cluster state.
- PubSub.ReceiveMessage is re-worked to not use ReceiveTimeout so it does not lose data when timeout
  occurres. In most cases it is recommended to use PubSub.Channel instead.
- Dialer.KeepAlive is set to 5 minutes by default.

## v6.12

- ClusterClient got new option called `ClusterSlots` which allows to build cluster of normal Redis
  Servers that don't have cluster mode enabled. See
  https://godoc.org/github.com/mujiantao/redis#example-NewClusterClient--ManualSetup
