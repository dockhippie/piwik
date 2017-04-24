#!/bin/bash

echo "> chown storage"
find /var/lib/piwik \( \! -user caddy -o \! -group caddy \) -print0 | xargs -0 -r chown caddy:caddy
