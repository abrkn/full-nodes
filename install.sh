#!/usr/bin/env bash
sudo cp $1/systemd.service /etc/systemd/system/docker.$1.service
sudo systemctl enable docker.$1
sudo systemctl daemon-reload
sudo systemctl restart docker.$1
sudo journalctl -u docker.$1 -n100 -f

