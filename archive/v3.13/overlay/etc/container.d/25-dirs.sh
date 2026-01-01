#!/usr/bin/env bash

echo "> creating app dirs"
mkdir -p \
    ${PIWIK_BASE_DIR} \
    ${PIWIK_ARCHIVE_DIR} \
    ${PIWIK_PLUGINS_DIR} \
    ${PIWIK_CONFIG_DIR}

true
