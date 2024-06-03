FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Paris \
    APP_USER=hpi

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    python3.11 python3.11-venv python3-pip

RUN python3 -m venv /opt/venv
RUN . /opt/venv/bin/activate && pip install poetry

RUN apt-get install -y --no-install-recommends \
    ansible

# network debug tools
RUN apt-get install -y --no-install-recommends \
    iputils-ping bind9-dnsutils net-tools

COPY --chown=root:root conf/ssh/config /root/.ssh/config

RUN echo 'export LC_ALL="C.UTF-8"' >> /root/.bashrc
RUN echo '. /opt/venv/bin/activate' >> /root/.bashrc


