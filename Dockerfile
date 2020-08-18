FROM golang:1.15.0-buster as builder

ENV GOPATH=/workspace/app
ENV APP_NAME=sample_web_app

WORKDIR /workspace/app

COPY ./src ./src

RUN go install $APP_NAME

FROM debian:buster-20200803-slim

WORKDIR /app

COPY --from=builder /workspace/app/bin ./bin

CMD [ "./bin/sample_web_app" ]
