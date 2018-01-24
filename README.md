# Alphasocket/dockerized-magento-cli-alpine
#### magento-cli-alpine
[![](https://travis-ci.org/AlphaSocket/dockerized-magento-cli-alpine.svg?branch=latest )]() [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-magento-cli-alpine:latest.svg)](https://microbadger.com/images/03192859189254/dockerized-magento-cli-alpine:latest ) [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-magento-cli-alpine:latest.svg)](https://microbadger.com/images/03192859189254/dockerized-magento-cli-alpine:latest)

Alpine container with all dependencies to setup, develop and diagnose a magento installation

## Branches & Versions
- latest
- latest-dev


## Packages installed
- Setup dependencies:
  + bash
  + curl
  + gettext
  + git
  + mysql-client
  + python
  + py-pip
  + php5
  + php5-phar
  + php5-soap
  + php5-iconv
  + php5-xml
  + php5-json
  + php5-zlib
  + php5-gd


## Configurable envvars
~~~
CONFIG_USER='magento-cli'
CONFIG_GROUP='magento'
CONFIG_PATHS_WEBROOT='/var/www/html'
CONFIG_PATHS_BINARIES='/usr/local/bin'
CONFIG_URLS_MAGERUN='https://files.magerun.net/n98-magerun-latest.phar'
CONFIG_CRON_LOG_LEVEL='8'
~~~


