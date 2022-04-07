FROM alpine:3.14

RUN apk update 
RUN apk add nginx
RUN apk add openssl
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN mkdir -p /etc/nginx/ssl
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.crt -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=emma/CN=localhost"

COPY html/index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/
COPY default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]


EXPOSE 80
EXPOSE 443

