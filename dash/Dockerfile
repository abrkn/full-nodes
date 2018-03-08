FROM ubuntu:16.04
RUN apt-get update
#RUN apt-get install -y build-essential
RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils wget
RUN wget -O dash.tar.gz https://github.com/dashpay/dash/releases/download/v0.12.2.3/dashcore-0.12.2.3-linux64.tar.gz
RUN tar zxf dash.tar.gz && \
	mv dashcore-0.12.2/bin/* /usr/bin/ && \
	rm -rf dash*
EXPOSE 9998-9999
CMD dashd -datadir=/data
