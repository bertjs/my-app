# Use official Apache+PHP image
FROM php:8.2-apache

# copy project files into Apache document root
COPY . /var/www/html

# enable Apache rewrite module (handy for frameworks)
RUN a2enmod rewrite

# expose port 80 (already default, but explicit)
EXPOSE 80
