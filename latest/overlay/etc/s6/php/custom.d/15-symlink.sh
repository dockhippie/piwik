#!/bin/bash

echo "> symlink app plugins"
rm -rf /srv/www/plugins
ln -sf \
  /var/lib/piwik/plugins \
  ${CADDY_WEBROOT}/plugins

echo "> symlink app config"
rm -rf /srv/www/config
ln -sf \
  /var/lib/piwik/config \
  ${CADDY_WEBROOT}/config

echo "> symlink app archive"
rm -rf /srv/www/archive
ln -sf \
  /var/lib/piwik/archive \
  ${CADDY_WEBROOT}/archive
