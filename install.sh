#!/usr/bin/env bash
sudo cp $1/systemd.service /etc/systemd/system/docker.$1.service
sudo systemctl enable docker.$1

