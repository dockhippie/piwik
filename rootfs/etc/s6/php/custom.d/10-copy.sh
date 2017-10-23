#!/bin/bash

if [[ -d /srv/www/plugins ]]
then
  for PLUGIN in $(find /var/lib/piwik/plugins -type d -maxdepth 1 -mindepth 1)
  do
    echo "> copying ${PLUGIN} plugin"
    rm -rf /var/lib/piwik/plugins/${PLUGIN}
    cp -rf /srv/www/plugins/${PLUGIN} /var/lib/piwik/plugins/
  done
fi

echo "> copying app config"
cp -rf \
  /srv/www/config/* \
  /var/lib/piwik/config/
