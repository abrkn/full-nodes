FROM ubuntu:16.04

ENV MONERO_VERSION=0.11.1.0 MONERO_SHA256=6581506f8a030d8d50b38744ba7144f2765c9028d18d990beb316e13655ab248

RUN apt-get update && apt-get install -y curl bzip2

RUN curl https://downloads.getmonero.org/cli/monero-linux-x64-v$MONERO_VERSION.tar.bz2 -O && \
  echo "$MONERO_SHA256  monero-linux-x64-v$MONERO_VERSION.tar.bz2" | sha256sum -c - && \
  tar -xjvf monero-linux-x64-v$MONERO_VERSION.tar.bz2 && \
  rm monero-linux-x64-v$MONERO_VERSION.tar.bz2 && \
  cp ./monero-v$MONERO_VERSION/monerod /usr/bin/ && \
  rm -r monero-*

VOLUME /data

EXPOSE 18080 18081

CMD monerod --fluffy-blocks --restricted-rpc --rpc-bind-ip=0.0.0.0 --confirm-external-bind --data-dir=/data
