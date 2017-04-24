FROM webhippie/php-caddy:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/piwik", "/srv/www/vendor"]

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
EXPOSE 8080
WORKDIR /srv/www

RUN apk update && \
  apk add \
    git \
    php7-ldap && \
  rm -rf \
    /var/cache/apk/*

ENV PIWIK_VERSION 3.0.3
ENV PIWIK_TARBALL http://builds.piwik.org/piwik-${PIWIK_VERSION}.tar.gz

RUN curl -sLo - \
  ${PIWIK_TARBALL} | tar -xzf - --strip 1 -C /srv/www && \
  chown -R caddy:caddy /srv/www

ADD rootfs /
