FROM ulsmith/alpine-apache-php7

MAINTAINER Scott Breakall <scott@breakall.org>

RUN apk update && apk upgrade

COPY mytinytodo /app/public
RUN chown -R apache:apache /app
