#!/usr/bin/env bash

echo "> symlink app plugins"
rm -rf ${APACHE_WEBROOT}/plugins
ln -sf \
    /var/lib/piwik/plugins \
    ${APACHE_WEBROOT}/plugins

echo "> symlink app config"
rm -rf ${APACHE_WEBROOT}/config
ln -sf \
    /var/lib/piwik/config \
    ${APACHE_WEBROOT}/config

echo "> symlink app archive"
rm -rf ${APACHE_WEBROOT}/archive
ln -sf \
    /var/lib/piwik/archive \
    ${APACHE_WEBROOT}/archive

true
