#!/bin/bash

declare -x PIWIK_SKIP_CHOWN
: "${PIWIK_SKIP_CHOWN:="false"}"

declare -x PIWIK_BASE_DIR
: "${PIWIK_BASE_DIR:="/var/lib/piwik"}"

declare -x PIWIK_ARCHIVE_DIR
: "${PIWIK_ARCHIVE_DIR:="${PIWIK_BASE_DIR}/archive"}"

declare -x PIWIK_PLUGINS_DIR
: "${PIWIK_PLUGINS_DIR:="${PIWIK_BASE_DIR}/plugins"}"

declare -x PIWIK_CONFIG_DIR
: "${PIWIK_CONFIG_DIR:="${PIWIK_BASE_DIR}/config"}"
