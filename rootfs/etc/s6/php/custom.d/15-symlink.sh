#!/bin/bash

echo "> symlink plugins"
rm -rf /srv/www/plugins
ln -sf \
  /var/lib/piwik/plugins \
  /srv/www/plugins

echo "> symlink config"
rm -rf /srv/www/config
ln -sf \
  /var/lib/piwik/config \
  /srv/www/config

echo "> symlink archive"
rm -rf /srv/www/archive
ln -sf \
  /var/lib/piwik/archive \
  /srv/www/archive
