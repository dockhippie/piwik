# piwik

[![Docker Build](https://github.com/dockhippie/piwik/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/piwik/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/piwik)

These are docker images for [Piwik/Matomo][upstream] running on our
[Apache PHP image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/piwik

## Ports

*  8080

## Available environment variables

```console
PIWIK_ARCHIVE_DIR = ${PIWIK_BASE_DIR}/archive
PIWIK_BASE_DIR = /var/lib/piwik
PIWIK_CONFIG_DIR = ${PIWIK_BASE_DIR}/config
PIWIK_PLUGINS_DIR = ${PIWIK_BASE_DIR}/plugins
PIWIK_SKIP_CHOWN = false
```

Extracted by the command: `grep -hE ': "\$\{(.*)\}"' latest/overlay/etc/entrypoint.d/*.sh | sed 's/: "\${//' | sed 's/:="/ = /' | sed 's/"}"$//' | sort | uniq`

## Inherited environment variables

*  [webhippie/php-apache](https://github.com/dockhippie/php-apache#available-environment-variables)
*  [webhippie/apache](https://github.com/dockhippie/apache#available-environment-variables)
*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```

[upstream]: https://matomo.org/
[parent]: https://github.com/dockhippie/php-apache
[dockerhub]: https://hub.docker.com/r/webhippie/piwik/tags
[quayio]: https://quay.io/repository/webhippie/piwik?tab=tags
[github]: https://github.com/dockhippie/piwik
