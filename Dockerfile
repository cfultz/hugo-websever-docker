# This Dockerfile is licensed under the CC0 1.0 Deed
# https://creativecommons.org/publicdomain/zero/1.0/
FROM httpd:2.4
COPY ./public/ /usr/local/apache2/htdocs/
