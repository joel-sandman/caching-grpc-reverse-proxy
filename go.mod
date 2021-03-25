module github.com/joel-sandman/caching-grpc-reverse-proxy

go 1.16

require (
	github.com/golang/protobuf v1.5.1
	github.com/hashicorp/terraform v0.14.9 // indirect
	github.com/joel-sandman/grpc-caching-interceptors v0.0.0-20200825065802-d28c395e2dd0
	github.com/patrickmn/go-cache v2.1.0+incompatible
	go.opencensus.io v0.23.0
	golang.org/x/net v0.0.0-20210324205630-d1beb07c2056 // indirect
	google.golang.org/genproto v0.0.0-20210324141432-3032e8ff099e // indirect
	google.golang.org/grpc v1.36.0
)

replace github.com/joel-sandman/grpc-caching-interceptors => ../grpc-caching-interceptors