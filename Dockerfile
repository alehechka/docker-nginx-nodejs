FROM fholzer/nginx-brotli:v1.21.6

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf