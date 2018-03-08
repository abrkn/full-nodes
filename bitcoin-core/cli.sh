#!/usr/bin/env bash
docker stop  bitcoin-core-cli
docker rm bitcoin-core-cli
docker run -ti \
	--name bitcoin-core-cli \
	--link bitcoin-core:bitcoin-core \
	bitcoin-core \
	bash
	#bitcoin-cli -rpcuser=user -rpcpassword=password -rpcconnect=bitcoin-core ${@:1}

