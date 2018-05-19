#!/usr/bin/env bash
docker stop  bitcoin-core-cli || true
docker rm bitcoin-core-cli || true
docker run -ti \
	--name bitcoin-core-cli \
	--link bitcoin-core:bitcoin-core \
	bitcoin-core \
	bitcoin-cli -rpcuser=user -rpcpassword=password -rpcconnect=bitcoin-core ${@:1}

