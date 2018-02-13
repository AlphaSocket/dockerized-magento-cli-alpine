#
# Do not change content here, image automatically built
#
FROM alpine:latest

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USERS_DEV="03192859189254" \
	GENERAL_DOCKER_USERS_PRD="alphasocket" \
	GENERAL_DOCKER_USER="alphasocket" \
	GENERAL_DOCKER_REGISTRIES_DEV="docker.io" \
	GENERAL_DOCKER_REGISTRIES_PRD="docker.io" \
	GENERAL_DOCKER_REGISTRY="docker.io" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_USER="03192859189254" \
	BUILD_REGISTRY="docker.io" \
	BUILD_NAME="magento-cli-alpine" \
	BUILD_REPO="https://github.com/alphaSocket/dockerized-magento-cli-alpine" \
	BUILD_BRANCH="latest" \
	BUILD_VERSION="latest" \
	BUILD_ENV="prd" \
	BUILD_FROM="alpine:latest" \
	BUILD_PORTS_MAIN="80" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_CMD="/usr/sbin/crond -f -l $CONFIG_CRON_LOG_LEVEL" \
	SETUP_DEPENDENCIES_SETUP_VALUESFROMPARSE="bash htop curl gettext git mysql-client $SETUP_DEPENDENCIES_DEVELOP $SETUP_DEPENDENCIES_SECURITY $SETUP_DEPENDENCIES_PHP" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_PHP="php5 php5-phar php5-soap php5-iconv php5-xml php5-json php5-zlib php5-gd php5-ctype php5-gd php5-pdo_mysql php5-dom php5-mcrypt php5-curl php5-openssl php5-opcache" \
	SETUP_DEPENDENCIES_SECURITY="python py-pip" \
	SETUP_DEPENDENCIES_DEVELOP="" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_URLS_MAGERUN="https://files.magerun.net/n98-magerun-latest.phar" \
	SETUP_URLS_COMPOSER="https://getcomposer.org/composer.phar" \
	SETUP_URLS_WPCLI="https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" \
	SETUP_URLS_MAGECONFIGSYNC="https://github.com/punkstar/mageconfigsync/releases/download/0.4.0/mageconfigsync-0.4.0.phar" \
	SETUP_URLS_MODMAN="https://raw.githubusercontent.com/colinmollenhour/modman/master/modman" \
	CONFIG_USER="magento-cli" \
	CONFIG_GROUP="magento" \
	CONFIG_PATHS_WEBROOT="/var/www/html" \
	CONFIG_PATHS_BINARIES="/usr/local/bin" \
	CONFIG_CRON_LOG_LEVEL="8"

RUN if [ ! -d "/usr/local/bin/setup" ]; then \
        mkdir -p /usr/local/bin/setup; \
    fi \
    && \
    if [ ! -d "/usr/local/bin/config" ]; then \
        mkdir -p /usr/local/bin/config; \
    fi



RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1518483976 1>/dev/stdout 2>/dev/stderr

EXPOSE 80 


ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-magento-cli-alpine"