FROM golang:1.7.3
WORKDIR /tmp
COPY main.go /tmp
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /tmp/httpenv /tmp/main.go

FROM scratch
WORKDIR /root/
EXPOSE 8080
COPY --from=0 /tmp/httpenv .
CMD ["/root/httpenv"]