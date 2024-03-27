FROM ghcr.io/m-arcus/php-mess-detector:base

ARG PHP_PHPMD_VERSION=2.15.0

LABEL org.opencontainers.image.authors="M-arcus" \
      org.opencontainers.image.url="https://github.com/phpmd/phpmd/" \
      org.opencontainers.image.documentation="https://phpmd.org/documentation/index.html" \
      org.opencontainers.image.source="https://github.com/M-arcus/php-mess-detector-docker" \
      org.opencontainers.image.vendor="M-arcus" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.title="PHP Mess Detector"

RUN curl -L  https://github.com/phpmd/phpmd/releases/download/${PHP_PHPMD_VERSION}/phpmd.phar -o /phpmd.phar && \
    chmod +x /phpmd.phar

ENTRYPOINT ["/usr/bin/php", "/phpmd.phar"]
