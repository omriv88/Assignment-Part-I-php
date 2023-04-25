FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y nginx php-fpm

COPY index.php /var/www/html/index.php 
COPY default /etc/nginx/sites-available/default
EXPOSE 80
CMD service php7.4-fpm start && nginx -g 'daemon off;'
