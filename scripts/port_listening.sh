#!/usr/bin/env bash

apt-get update
apt-get install -y openssh-server
service ssh start
