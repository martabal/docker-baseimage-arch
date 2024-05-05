FROM archlinux:latest

LABEL maintainer="martabal"

RUN \
    pacman -Syu --noconfirm \
        bash \
        biber \
        chromium \
        composer \
        coreutils \
        curl \
        docker \
        docker-buildx \
        git \
        jdk-openjdk \
        jq \
        libvips \
        make \
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
        shellcheck \
        sqlite \
        texlive \
        texlive-lang \
        yamllint && \
    ln -s /usr/bin/vendor_perl/exiftool /usr/bin && \
    echo "**** install bun ****" && \
    curl -fsSL https://bun.sh/install | bash && \
    ln -s /root/.bun/bin/bun /usr/bin && \
    echo "**** cleanup ****" && \
    rm -rf \
        /tmp/* \
        /var/cache/pacman/pkg/* \
        /var/lib/pacman/sync/*
