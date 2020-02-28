# Piwik

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/piwik/status.svg)](https://cloud.drone.io/dockhippie/piwik)
[![](https://images.microbadger.com/badges/image/webhippie/piwik.svg)](https://microbadger.com/images/webhippie/piwik "Get your own image badge on microbadger.com")

These are docker images for [Piwik](https://piwik.org/) running on an [PHP Caddy container](https://registry.hub.docker.com/u/webhippie/php-caddy/).


## Versions

* [latest](./latest) available as `webhippie/piwik:latest`
* [3.13](./v3.13) available as `webhippie/piwik:3.13`
* [3.12](./v3.12) available as `webhippie/piwik:3.12`
* [3.11](./v3.11) available as `webhippie/piwik:3.11`
* [3.10](./v3.10) available as `webhippie/piwik:3.10`

## Volumes

* /var/lib/piwik
* /srv/www/vendor


## Ports

* 8080


## Available environment variables

```bash

```


## Inherited environment variables

* [webhippie/php-caddy](https://github.com/dockhippie/php-caddy#available-environment-variables)
* [webhippie/caddy](https://github.com/dockhippie/caddy#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
