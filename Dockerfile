FROM alpine:latest

MAINTAINER Jonathan Kelley <jonk@omg.lol>

RUN apk add --no-cache bash

WORKDIR /

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod -v 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

