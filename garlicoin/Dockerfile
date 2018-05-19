FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y wget

RUN wget -O garlicoin.tar.gz https://github.com/GarlicoinOrg/Garlicoin/releases/download/allium-mainnet/Garlicoin-x86_64-unknown-linux-gnu.tar.gz
RUN mkdir -p garlicoin
RUN tar zxvf garlicoin.tar.gz -C garlicoin --strip-components=1
RUN ls garlicoin/bin
RUN mv garlicoin/bin/garlicoin* /usr/bin
RUN rm -rf garlic*

EXPOSE 42068
CMD garlicoind -printtoconsole -rpcallowip=0.0.0.0/0 -rpcuser=user -datadir=/data
