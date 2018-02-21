# Alphasocket/dockerized-magento-cli-alpine
#### magento-cli-alpine
Alpine container with all dependencies to manage a magento installation (crons included)


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-magento-cli-alpine/branches/latest-dev/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-magento-cli-alpine) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-magento-cli-alpine:latest-dev.svg)](https://microbadger.com/images/03192859189254/magento-cli-alpine:latest-dev ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-magento-cli-alpine:latest-dev.svg)](https://microbadger.com/images/03192859189254/magento-cli-alpine:latest-dev) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/magento-cli-alpine:latest-dev.svg)](https://microbadger.com/images/alphasocket/magento-cli-alpine:latest-dev ) | [![](https://images.microbadger.com/badges/version/alphasocket/magento-cli-alpine:latest-dev.svg)](https://microbadger.com/images/alphasocket/magento-cli-alpine:latest-dev) |

## Branches & Versions
- latest
- latest-dev


## Packages installed
- Runtime dependencies:
  + bash
  + htop
  + curl
  + git
  + mysql-client
  + nodejs
  + nodejs-npm
  + $SETUP_DEPENDENCIES_SECURITY
  + php5
  + php5-phar
  + php5-soap
  + php5-iconv
  + php5-xml
  + php5-json
  + php5-zlib
  + php5-gd
  + php5-ctype
  + php5-gd
  + php5-pdo_mysql
  + php5-dom
  + php5-mcrypt
  + php5-curl
  + php5-openssl
  + php5-opcache


## Configurable envvars
~~~
CONFIG_REDINESS_TEST="true"
CONFIG_LIVENESS_TEST="true"
CONFIG_GROUPS_ADDITIONAL_ID="1001"
CONFIG_GROUPS_ADDITIONAL_NAME=""
CONFIG_GROUPS_MAIN_ID="1100"
CONFIG_GROUPS_MAIN_NAME="magento"
CONFIG_USERS_ADDITIONAL_ID="1001"
CONFIG_USERS_ADDITIONAL_NAME=""
CONFIG_USERS_ADDITIONAL_GROUPS=""
CONFIG_USERS_MAIN_ID="1100"
CONFIG_USERS_MAIN_NAME="magento-cli"
CONFIG_USERS_MAIN_GROUPS="magento"
CONFIG_GROUP="magento"
CONFIG_USER="magento-cli"
CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
CONFIG_PATHS_WEBROOT="/var/www/html"
CONFIG_PATHS_BINARIES="/usr/local/bin"
CONFIG_CRON_LOG_LEVEL="8"
~~~
