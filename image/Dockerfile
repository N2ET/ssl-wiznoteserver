FROM wiznote/wizserver:latest
MAINTAINER n2et@qq.com

COPY ssl_wiz /etc/nginx/ssl_wiz/
COPY init.bash /etc/nginx/ssl_wiz/init.sh

RUN chmod +x /etc/nginx/ssl_wiz/init.sh
RUN /etc/nginx/ssl_wiz/init.bash

#RUN ls /etc/nginx/ssl_wiz
#RUN cat /wiz/config/nginx.conf

EXPOSE 443
