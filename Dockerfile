# Dockerfile
FROM nimmis/apache-php7

MAINTAINER Scott Breakall <scott@breakall.org>

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

RUN apt update && \
	apt install -y sqlite3 libsqlite3-dev


COPY mytinytodo /var/www/html/
RUN chown -R www-data:www-data  /var/www/html/db/
RUN rm /var/www/html/index.html
