FROM nginx:stable-alpine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 ahmed && adduser -G ahmed -g ahmed -s /bin/sh -D ahmed 

RUN chown ahmed:ahmed /var/www/html