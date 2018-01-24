#
# Do not change content here, image automatically built
#
FROM alpine:latest

ARG BUILD_COMMIT
ARG BUILD_TIME

ENV \
	 BUILD_COMMIT=$BUILD_COMMIT \
	 BUILD_DATE=$BUILD_DATE \
	GENERAL_DOCKER_USER="03192859189254" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_NAME="magento-cli-alpine" \
	BUILD_BRANCH="latest-dev" \
	BUILD_VERSION="latest" \
	BUILD_ENV="dev" \
	BUILD_DOCKERFILE_IMAGE="alpine:latest" \
	BUILD_DOCKERFILE_CMD="/usr/sbin/crond -f -l $CONFIG_CRON_LOG_LEVEL" \
	SETUP_DEPENDENCIES_SECURITY="python py-pip" \
	SETUP_DEPENDENCIES_DEVELOP="node " \
	SETUP_DEPENDENCIES_SETUP="bash curl gettext git php5 mysql-client php-mysql php-mysqli node  python py-pip" \
	SETUP_DEPENDENCIES_CONFIG="" \
	CONFIG_USER="magento-cli" \
	CONFIG_GROUP="magento" \
	CONFIG_PATHS_WEBROOT="/var/www/html" \
	CONFIG_PATHS_BINARIES="/usr/local/bin" \
	CONFIG_URLS_MAGERUN="https://files.magerun.net/n98-magerun.phar" \
	CONFIG_CRON_LOG_LEVEL="8"

ADD envvars /usr/local/envvars
ADD bin/setup /usr/local/bin/setup
ADD bin/config /usr/local/bin/config

RUN chmod +rx /usr/local/bin/setup && \
    chmod +rx /usr/local/bin/config && \
    sync && \
    /usr/local/bin/setup 



ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/config && /usr/sbin/crond -f -l $CONFIG_CRON_LOG_LEVEL"]

LABEL \
    org.label-schema.vcs-ref=$BUILD_COMMIT \
    org.label-schema.vcs-url="https://github.com/AlphaSocket/dockerized-magento-cli-alpine"