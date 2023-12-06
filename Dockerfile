# This Dockerfile is licensed under the CC0 1.0 Deed
# https://creativecommons.org/publicdomain/zero/1.0/

FROM alpine:latest
RUN apk update && apk add lighttpd && rm -rf /var/cache/apk/*
ADD public/ /var/www/localhost/htdocs/
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]


