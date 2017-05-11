#!/bin/bash

if [[ ! -d /var/lib/piwik/plugins/Login ]]
then
  echo "> copying app plugins"
  cp -rf \
    /srv/www/plugins/* \
    /var/lib/piwik/plugins/
fi

echo "> copying app config"
cp -rf \
  /srv/www/config/* \
  /var/lib/piwik/config/
