#!/bin/bash

if [ -z "$SKIP_BACKUP" ]; then
  for x in `ls /var/www/web/sites`; do
    if [ -d "/var/www/web/sites/$x" ]; then
      cd /var/www/web/sites/$x
      tar -czf /backup/$x.tar.gz files
    fi
  done
fi
