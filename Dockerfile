FROM fholzer/nginx-brotli:v1.21.6

COPY nginx.conf /etc/nginx/nginx.conf
COPY templates /etc/nginx/templates

COPY entrypoint/docker-entrypoint.sh /
COPY entrypoint/scripts /docker-entrypoint.d
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]