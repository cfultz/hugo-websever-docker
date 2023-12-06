# This Dockerfile is licensed under the CC0 1.0 Deed
# https://creativecommons.org/publicdomain/zero/1.0/

FROM nginx:alpine-slim

COPY --chown=nginx \
     ./nginx.conf /etc/nginx/conf.d/default.conf

RUN rm -rf /usr/share/nginx/html/ && mkdir /usr/share/nginx/html/

COPY public/ /usr/share/nginx/html/
