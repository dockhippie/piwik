# Piwik

[![](https://images.microbadger.com/badges/image/webhippie/piwik.svg)](https://microbadger.com/images/webhippie/piwik "Get your own image badge on microbadger.com")

These are docker images for [Piwik](https://piwik.org/) running on an
[PHP Caddy container](https://registry.hub.docker.com/u/webhippie/php-caddy/).


## Versions

* [latest](https://github.com/dockhippie/piwik/tree/master)
  available as ```webhippie/piwik:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/piwik/)
* [3.0.3](https://github.com/dockhippie/piwik/tree/3.0.3)
  available as ```webhippie/piwik:3.0.3``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/piwik/)


## Volumes

* /var/lib/piwik
* /srv/www/vendor


## Ports

* 8080


## Available environment variables

```bash
```


## Inherited environment variables

```bash
ENV PHP_MEMORY_LIMIT 512M
ENV PHP_POST_MAX_SIZE 2G
ENV PHP_UPLOAD_MAX_FILESIZE 2G
ENV PHP_MAX_EXECUTION_TIME 3600
ENV PHP_MAX_INPUT_TIME 3600
ENV PHP_DATE_TIMEZONE UTC
ENV PHP_LOG_LEVEL warning
ENV PHP_MAX_CHILDREN 75
ENV PHP_MAX_REQUESTS 500
ENV PHP_PROCESS_IDLE_TIMEOUT 10s
ENV PHP_COMPOSER_INSTALL true
```

```bash
ENV CADDY_AGREE false
ENV CADDY_CA https://acme-v01.api.letsencrypt.org/directory
ENV CADDY_CA_TIMEOUT 10s
ENV CADDY_CPU 100%
ENV CADDY_EMAIL
ENV CADDY_GRACE 5s
ENV CADDY_HTTP2 true
ENV CADDY_QUIET false
ENV CADDY_WEBROOT /srv/www
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2017 Thomas Boerger <http://www.webhippie.de>
```
