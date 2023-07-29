FROM archlinux:latest

LABEL maintainer="martabal"

RUN \
    pacman -Syu --noconfirm \
        bash \
        composer \
        coreutils \
        curl \
        docker \
        docker-buildx \
        git \
        jq \
        mariadb-libs \
        nodejs \
        python-pillow \
        qemu-base \
        npm \
        php \
        postgresql-libs \
        rust \
        python3 \
        python-pip \
        sqlite