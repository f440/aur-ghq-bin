FROM archlinux:latest

RUN pacman -Sy --noconfirm --needed base-devel namcap sudo

ARG uid
RUN useradd -m -d /app -u ${uid:-1000} app
RUN echo 'app ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/app
USER app
WORKDIR /app
