# Alphasocket/dockerized-magento-cli-alpine
#### magento-cli-alpine
Alpine container with all dependencies to setup, develop and diagnose a magento installation


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-magento-cli-alpine/branches/latest/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-magento-cli-alpine) | Layers | Size  |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-magento-cli-alpine:latest.svg)](https://microbadger.com/images/03192859189254/magento-cli-alpine:latest ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-magento-cli-alpine:latest.svg)](https://microbadger.com/images/03192859189254/magento-cli-alpine:latest) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/magento-cli-alpine:latest.svg)](https://microbadger.com/images/alphasocket/magento-cli-alpine:latest ) | [![](https://images.microbadger.com/badges/version/alphasocket/magento-cli-alpine:latest.svg)](https://microbadger.com/images/alphasocket/magento-cli-alpine:latest) |

## Branches & Versions
- latest
- latest-dev


## Packages installed
- Setup dependencies:
  + bash
  + htop
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
CONFIG_USER="magento-cli"
CONFIG_GROUP="magento"
CONFIG_PATHS_WEBROOT="/var/www/html"
CONFIG_PATHS_BINARIES="/usr/local/bin"
CONFIG_CRON_LOG_LEVEL="8"
~~~
