FROM archlinux:latest

LABEL maintainer="martabal"

RUN \
    pacman -Syu --noconfirm \
        bash \
        chromium \
        composer \
        coreutils \
        curl \
        docker \
        docker-buildx \
        git \
        jq \
        libvips \
        mariadb-libs \
        nodejs \
        npm \
        perl-image-exiftool \
        php \
        postgresql-libs \
        python3 \
        python-pip \
        python-poetry \
        qemu-base \
        rust \
        sqlite