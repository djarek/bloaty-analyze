FROM alpine:3.12

RUN apk add bloaty bloaty-dev

ENTRYPOINT [ "sh", "-c"]
