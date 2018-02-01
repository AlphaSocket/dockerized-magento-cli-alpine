#
# Do not change content here, image automatically built
#
FROM alpine:latest

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USER="03192859189254" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_NAME="magento-cli-alpine" \
	BUILD_BRANCH="latest" \
	BUILD_VERSION="latest" \
	BUILD_ENV="prd" \
	BUILD_DOCKERFILE_IMAGE="alpine:latest" \
	BUILD_DOCKERFILE_CMD="/usr/sbin/crond -f -l $CONFIG_CRON_LOG_LEVEL" \
	SETUP_DEPENDENCIES_PHP="php5 php5-phar php5-soap php5-iconv php5-xml php5-json php5-zlib php5-gd php5-ctype php5-gd php5-pdo_mysql php5-dom php5-mcrypt php5-curl php5-openssl php5-opcache" \
	SETUP_DEPENDENCIES_SECURITY="python py-pip" \
	SETUP_DEPENDENCIES_DEVELOP="" \
	SETUP_DEPENDENCIES_SETUP="bash curl gettext git  mysql-client  python py-pip php5 php5-phar php5-soap php5-iconv php5-xml php5-json php5-zlib php5-gd php5-ctype php5-gd php5-pdo_mysql php5-dom php5-mcrypt php5-curl php5-openssl php5-opcache" \
	SETUP_DEPENDENCIES_CONFIG="" \
	CONFIG_USER="magento-cli" \
	CONFIG_GROUP="magento" \
	CONFIG_PATHS_WEBROOT="/var/www/html" \
	CONFIG_PATHS_BINARIES="/usr/local/bin" \
	CONFIG_URLS_MAGERUN="https://files.magerun.net/n98-magerun-latest.phar" \
	CONFIG_URLS_COMPOSER="https://getcomposer.org/composer.phar" \
	CONFIG_URLS_WPCLI="https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" \
	CONFIG_CRON_LOG_LEVEL="8"

RUN if [ ! -d "/usr/local/bin/setup" ]; then \
        mkdir -p /usr/local/bin/setup; \
    fi \
    && \
    if [ ! -d "/usr/local/bin/config" ]; then \
        mkdir -p /usr/local/bin/config; \
    fi

ADD bin/docker-config /usr/local/bin/docker-config
ADD bin/setup /usr/local/bin/setup/1517449870
ADD bin/config /usr/local/bin/config/1517449870

RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1517449870 




ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-config && /usr/sbin/crond -f -l $CONFIG_CRON_LOG_LEVEL"]

LABEL \
    org.label-schema.vcs-ref=$BUILD_COMMIT \
    org.label-schema.vcs-url="https://github.com/AlphaSocket/dockerized-magento-cli-alpine"