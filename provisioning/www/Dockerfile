FROM alpine:latest

RUN apk update && apk add nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/data/index.html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
