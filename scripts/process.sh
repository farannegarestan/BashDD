#!/usr/bin/env bash

apt update
apt install -y bind9
service bind9 start