#!/bin/sh
apt update
sleep 3m
apt install mongodb -y
systemctl enable mongodb
systemctl start mongodb
