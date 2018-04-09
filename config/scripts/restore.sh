#!/bin/bash

if [ -z "$SKIP_BACKUP" ]; then
  cd /var/www/web/sites/default
  tar -xzf /backup/files.tar.gz
fi
