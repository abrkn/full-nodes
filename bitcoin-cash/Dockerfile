FROM ubuntu:16.04
RUN apt-get update && \
	apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:bitcoin-abc/ppa && \
    apt-get update && \
    apt-get install -y bitcoind
EXPOSE 8332-8333
CMD ["/usr/bin/bitcoind", "-datadir=/data", "--printtoconsole"]

