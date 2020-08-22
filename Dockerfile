FROM golang:1.15.0-buster as builder

WORKDIR /workspace/app

COPY ./go.mod ./
COPY ./cmd ./cmd

RUN go build ./cmd/api/main.go

FROM debian:buster-20200803-slim

WORKDIR /app

COPY --from=builder /workspace/app/main ./

CMD [ "./main" ]
