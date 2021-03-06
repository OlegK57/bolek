FROM nginx

MAINTAINER OlegK57
LABEL maintainer "OlegK57@gmail.com"

COPY static-html-directory /usr/share/nginx/html
COPY entrypoint.sh /

RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
