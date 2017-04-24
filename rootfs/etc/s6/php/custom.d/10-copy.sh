#!/bin/bash

if [[ ! -d /var/lib/piwik/plugins/Login ]]
then
  echo "> copying plugin"
  cp -rf \
    /srv/www/plugins/* \
    /var/lib/piwik/plugins/
fi

echo "> copying config"
cp -rf \
  /srv/www/config/* \
  /var/lib/piwik/config/
