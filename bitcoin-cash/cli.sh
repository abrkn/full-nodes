#!/usr/bin/env bash
docker stop  bitcoin-cash-cli || true
docker rm bitcoin-cash-cli || true
docker run -ti \
	--name bitcoin-cash-cli \
	--link bitcoin-cash:bitcoin-cash \
	bitcoin-cash \
	bitcoin-cli -rpcuser=user -rpcpassword=password -rpcconnect=bitcoin-cash ${@:1}

