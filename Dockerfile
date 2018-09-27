FROM nginx:alpine

COPY HTMLPage/default.conf /etc/nginx/conf.d/
COPY HTMLPage/index.html /usr/share/nginx/html/
COPY HTMLPage/images /usr/share/nginx/html/images/

EXPOSE 80
