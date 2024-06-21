#!/usr/bin/env bash

if [[ "${KANBOARD_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown base dir"
    find ${PIWIK_BASE_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -0 -r chown apache:apache

    if [[ ! ${PIWIK_BASE_DIR} =~ ^${PIWIK_ARCHIVE_DIR} ]]; then
        echo "> chown archive dir"
        find ${PIWIK_ARCHIVE_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi

    if [[ ! ${PIWIK_BASE_DIR} =~ ^${PIWIK_PLUGINS_DIR} ]]; then
        echo "> chown plugins dir"
        find ${PIWIK_PLUGINS_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi

    if [[ ! ${PIWIK_BASE_DIR} =~ ^${PIWIK_CONFIG_DIR} ]]; then
        echo "> chown config dir"
        find ${PIWIK_CONFIG_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi
fi

true
