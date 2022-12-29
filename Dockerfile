FROM golang:1.17.11-alpine3.15 as builder
WORKDIR /go/src/app

COPY . .
RUN go mod init
RUN go build main.go

FROM alpine
COPY --from=builder /go/src/app/main /go/src/app/main

CMD ["./main"]