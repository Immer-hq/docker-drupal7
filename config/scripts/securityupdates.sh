#!/bin/bash

node /var/scripts/securityupdates.js

cd /var/www
drush make-update-exclude --include=/var/scripts/drush -y --update-backend=drush --result-file=drush.make.yml --security-only drush.make.yml

echo "Changed: /var/www/drush.make.yml => /drush.make.yml"
