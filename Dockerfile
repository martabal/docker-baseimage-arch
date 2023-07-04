FROM archlinux:latest

LABEL maintainer="martabal"

RUN \
    pacman -Syu --noconfirm \
        bash \
        composer \
        coreutils \
        curl \
        git \
        jq \
        mariadb-libs \
        nodejs \
        npm \
        php \
        postgresql-libs \
        rust \
        python3 \
        python-pip \
        sqlite