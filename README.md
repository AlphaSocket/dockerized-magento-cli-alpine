# Alphasocket/dockerized-magento-cli-alpine
#### magento-cli-alpine
[![](https://travis-ci.org/AlphaSocket/dockerized-magento-cli-alpine.svg?branch=latest-dev )]() [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-magento-cli-alpine:latest-dev.svg)](https://microbadger.com/images/03192859189254/dockerized-magento-cli-alpine:latest-dev ) [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-magento-cli-alpine:latest-dev.svg)](https://microbadger.com/images/03192859189254/dockerized-magento-cli-alpine:latest-dev)

Alpine container with all dependencies to setup, develop and diagnose a magento installation

## Branches & Versions
- latest
- latest-dev


## Packages installed
- Setup dependencies:
  + bash
  + curl
  + php
  + python
  + pip
- Config dependencies:
  + gettext
  + git


## Configurable envvars
~~~
CONFIG_USER='magento-cli'
CONFIG_GROUP='magento'
CONFIG_PATHS_WEBROOT='/var/www/html'
CONFIG_PATHS_BINARIES='/usr/local/bin'
CONFIG_URLS_N98-MAGERUN='https://files.magerun.net/n98-magerun.phar'
CONFIG_CRON_LOG_LEVEL='8'
~~~


