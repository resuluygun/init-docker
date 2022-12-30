FROM golang:1.17.11-alpine3.15 as builder
WORKDIR /go/src/app

COPY . .
RUN go mod init
RUN go build main.go

FROM alpine
COPY --from=builder /go/src/app /go/src/app
#run build inside folder
CMD ["./go/src/app/main"] 