FROM archlinux:latest

LABEL maintainer="martabal"

RUN \
  pacman -Syu --noconfirm \
    ansible \
    base-devel \
    bash \
    biber \
    chromium \
    composer \
    coreutils \
    curl \
    diesel-cli \
    docker \
    docker-buildx \
    dpkg \
    ghostscript \
    git \
    jdk-openjdk \
    jq \
    libvips \
    make \
    mariadb-libs \
    nodejs-lts \
    npm \
    openssh \
    openssl \
    pacman-contrib \
    perl-image-exiftool \
    php \
    pnpm \
    postgresql-libs \
    prettier \
    python3 \
    python-pip \
    python-poetry \
    qemu-base \
    rust \
    ruff \
    rye \
    shellcheck \
    sqlite \
    texlive \
    texlive-lang \
    uv \
    yamlfmt \
    yamllint && \
  ln -s /usr/bin/vendor_perl/exiftool /usr/bin && \
  echo "**** install bun ****" && \
  curl -fsSL https://bun.sh/install | bash && \
  ln -s /root/.bun/bin/bun /usr/bin && \
  echo "**** create user abc ****" && \
  useradd -d /home/abc -m abc && \
  echo "abc ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/* \
    /var/cache/pacman/pkg/* \
    /var/lib/pacman/sync/*

USER abc
