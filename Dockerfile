ARG NGINX_VERSION=1.17.10
FROM nginx:${NGINX_VERSION}
RUN  set -eux; \
     apt-get update; \
     apt-get install nginx-extras -y; \
     apt-get clean all; \
     rm -f/etc/nginx/sites-enabled/default; \
     rm -f /etc/nginx/sites-available/default
