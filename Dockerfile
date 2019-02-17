FROM nimmis/apache-php7

MAINTAINER Scott Breakall <scott@breakall.org>

RUN apt update && apt upgrade -y
RUN apt install -y sqlite3 libsqlite3-dev
RUN apt clean
COPY mytinytodo /var/www/html/
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN chown -R www-data:www-data  /var/www/html/db/
RUN rm /var/www/html/index.html
RUN sed -i '/PidFile/ d' /etc/apache2/apache2.conf
EXPOSE 80
EXPOSE 443
CMD /run.sh
