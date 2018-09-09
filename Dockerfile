FROM ubuntu:latest

COPY flamenco-manager-2.1.1-linux.tar.gz /tmp/flamenco-manager.tar.gz
COPY entrypoint.sh /flamenco/entrypoint.sh

WORKDIR /tmp/

RUN \
  yes | apt-get update \
  && apt-get -y install gettext-base vim curl \
  && tar -xvf flamenco-manager.tar.gz \
  && rm flamenco-manager.tar.gz \
  && mv flamenco*/* /flamenco/

WORKDIR /flamenco

ENTRYPOINT ["/flamenco/entrypoint.sh"]
