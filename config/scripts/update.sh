#!/bin/bash

cd /var/www/web
drush -y updb
drush -y cr
drush -y fra
drush -y cr
drush -y fra
drush cc all
