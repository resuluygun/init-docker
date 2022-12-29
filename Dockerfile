FROM golang:1.17.11-alpine3.15 as builder
COPY . .
RUN go build main.go

FROM alpine3.15
COPY --from=builder main ./main

CMD ["./main"]