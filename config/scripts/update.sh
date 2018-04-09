#!/bin/bash

cd /var/www/web
drush -y updb
drush cc all
drush -y fra
drush cc all
drush -y fra
drush cc all
