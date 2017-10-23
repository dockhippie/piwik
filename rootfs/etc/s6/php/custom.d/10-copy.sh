#!/bin/bash

if [[ -d /srv/www/plugins ]]
then
  for PLUGIN in $(find /srv/www/plugins -type d -maxdepth 1 -mindepth 1)
  do
    NAME=$(basename ${PLUGIN})

    echo "> copying ${NAME} plugin"
    rm -rf /var/lib/piwik/plugins/${NAME}
    cp -rf /srv/www/plugins/${NAME} /var/lib/piwik/plugins/
  done
fi

echo "> copying app config"
cp -rf \
  /srv/www/config/* \
  /var/lib/piwik/config/
