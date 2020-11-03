FROM alpine:latest

RUN apk update && apk add nmap nmap-scripts && rm -rf /var/cache/apk/*

ENTRYPOINT ["nmap"]
