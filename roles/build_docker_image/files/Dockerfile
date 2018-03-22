FROM library/alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache nginx bash

COPY nginx-www.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/www/localhost/htdocs

EXPOSE 80

CMD ["nginx", "-g", "pid /tmp/nginx.pid; daemon off;"]