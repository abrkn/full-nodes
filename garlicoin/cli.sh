#!/usr/bin/env bash
NAME=garlicoin
docker stop garlicoin-cli || true
docker rm garlicoin-cli || true
docker run -ti \
	--name garlicoin-cli \
	--link garlicoin:garlicoin \
	garlicoin \
	garlicoin-cli -rpcuser=user -rpcconnect=garlicoin ${@:1}
