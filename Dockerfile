FROM alpine:latest

RUN apk add bloaty bloaty-dev

ENTRYPOINT [ "sh", "-c"]
