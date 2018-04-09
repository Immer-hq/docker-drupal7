#!/bin/bash

if [ -z "$SKIP_BACKUP" ]; then
  if [ -r /backup/files.tar.gz ]; then
    cd /var/www/web/sites/default
    tar -xzf /backup/files.tar.gz
  fi
fi
