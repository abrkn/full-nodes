#!/usr/bin/env bash
set -e

for node in bitcoin-cash bitcoin-core dash monero; do
	echo "Installing $node..."
	./install.sh $node
done

