module github.com/mujiantao/redis/extra/redisotel/v8

go 1.15

replace github.com/mujiantao/redis/v8 => ../..

replace github.com/mujiantao/redis/extra/rediscmd/v8 => ../rediscmd

require (
	github.com/mujiantao/redis/extra/rediscmd/v8 v8.11.5
	github.com/mujiantao/redis/v8 v8.11.5
	go.opentelemetry.io/otel v1.5.0
	go.opentelemetry.io/otel/sdk v1.4.1
	go.opentelemetry.io/otel/trace v1.5.0
)
