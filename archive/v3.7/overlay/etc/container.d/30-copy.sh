#!/usr/bin/env bash

if [[ -d ${APACHE_WEBROOT}/plugins ]]; then
    for PLUGIN in $(find ${APACHE_WEBROOT}/plugins -type d -maxdepth 1 -mindepth 1); do
        NAME=$(basename ${PLUGIN})

        echo "> copying ${NAME} plugin"
        rm -rf /var/lib/piwik/plugins/${NAME}
        cp -rf ${APACHE_WEBROOT}/plugins/${NAME} /var/lib/piwik/plugins/
    done
fi

echo "> copying app config"
cp -rf \
    ${APACHE_WEBROOT}/config/* \
    /var/lib/piwik/config/

true
