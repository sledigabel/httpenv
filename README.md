# httpenv

A simple http server printing all the env vars. Convenient for testing.

## Build

```
go build main.go
```

## Docker build

```
docker build -t image:tag .
```

## Docker run

```
docker run -d -p 8080:8080 sledigabel/httpenv:latest
```

## Test and use

```
curl localhost:8080
```