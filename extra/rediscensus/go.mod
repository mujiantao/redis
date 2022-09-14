module github.com/mujiantao/redis/extra/rediscensus/v8

go 1.15

replace github.com/mujiantao/redis/v8 => ../..

replace github.com/mujiantao/redis/extra/rediscmd/v8 => ../rediscmd

require (
	github.com/mujiantao/redis/extra/rediscmd/v8 v8.11.5
	github.com/mujiantao/redis/v8 v8.11.5
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	go.opencensus.io v0.23.0
)
