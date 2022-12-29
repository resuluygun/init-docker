FROM golang:1.17.11-alpine3.15
COPY . .

RUN go build main.go
CMD ["./main"]