FROM golang:latest AS build-env
# Build stand-alone (independent of libc implementation)
ENV CGO_ENABLED 0
ADD . /go/src/github.com/joel-sandman/caching-grpc-reverse-proxy
WORKDIR /go/src/github.com/joel-sandman/caching-grpc-reverse-proxy
RUN go build -mod=vendor -o /caching-grpc-reverse-proxy
# Multi-stage!
FROM alpine
WORKDIR /
COPY --from=build-env /caching-grpc-reverse-proxy /usr/local/bin/
ENTRYPOINT caching-grpc-reverse-proxy
