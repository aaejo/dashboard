FROM nginx:1.22.1-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY assets/ /usr/share/nginx/html/assets/
COPY index.html /usr/share/nginx/html/
COPY upload.html /usr/share/nginx/html/

EXPOSE 8000
LABEL org.opencontainers.image.source=https://github.com/aaejo/dashboard
