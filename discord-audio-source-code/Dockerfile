FROM    debian:buster-slim

ENV     DEBIAN_FRONTEND "noninteractive"

RUN     apt update \
&&      apt install -y --no-install-recommends \
build-essential \
gnupg \
ca-certificates \
rsyslog \
python3-dev \
python3-pip \
python3-setuptools \
python3-distutils \
libxcb-xinerama0 \
python3-pyqt5.qtsvg \
ffmpeg \
libportaudio2 \
python3-nacl \
python3-aiohttp

RUN     mkdir -p /das

WORKDIR /das/
COPY    . .
RUN     pip3 install \
discord.py \
pulsectl \
sounddevice

COPY    docker-entrypoint.sh /
RUN     chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
