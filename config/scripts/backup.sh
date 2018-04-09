#!/bin/bash

if [ -z "$SKIP_BACKUP" ]; then
  cd /var/www/web/sites/default
  tar -czf /backup/files.tar.gz files
fi
