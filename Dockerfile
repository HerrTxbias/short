FROM richarvey/nginx-php-fpm
COPY src/ /var/www/html/
WORKDIR /root/
RUN rm /etc/nginx/sites-enabled/default.conf
COPY nginx-conf/ /etc/nginx/sites-enabled/
EXPOSE 80
CMD "npm start"
