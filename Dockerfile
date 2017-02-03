FROM eboraas/apache
RUN apt-get update \
    && apt-get install -y \
        vim
RUN a2enmod ssl proxy proxy_http proxy_connect proxy_balancer
COPY ./proxy.conf /etc/apache2/mods-enabled/proxy.conf
RUN service apache2 restart
