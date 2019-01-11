#!/bin/bash

cd /var/www

if [ -f "drush.make.yml" ]; then
  drush make-update-exclude --include=/var/scripts/drush -y --update-backend=drush --result-file=drush.make.yml --security-only drush.make.yml
  echo "Changed: /var/www/drush.make.yml => /drush.make.yml"
fi

if [ -f "drush.make" ]; then
  drush make-update-exclude --include=/var/scripts/drush -y --update-backend=drush --result-file=drush.make --format=ini --security-only drush.make
  echo "Changed: /var/www/drush.make => /drush.make"
fi

if [ -f "src/drush.make" ]; then
  drush make-update-exclude --include=/var/scripts/drush -y --update-backend=drush --result-file=src/drush.make --format=ini --security-only src/drush.make
  echo "Changed: /var/www/src/drush.make => /src/drush.make"
fi

if [ -f "src/drush.make.yml" ]; then
  drush make-update-exclude --include=/var/scripts/drush -y --update-backend=drush --result-file=src/drush.make.yml --format=ini --security-only src/drush.make.yml
  echo "Changed: /var/www/src/drush.make.yml => /src/drush.make.yml"
fi

if [ -f "src/project.make" ]; then
  drush make-update-exclude --include=/var/scripts/drush -y --update-backend=drush --result-file=src/project.make --format=ini --security-only src/project.make
  echo "Changed: /var/www/src/project.make => /src/project.make"
fi
