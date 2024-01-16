#!/bin/bash -e
################################################################################
##  File:  libssl.sh
##  Desc:  Installs libssl libraries
################################################################################

echo "Install libssl"
apt update
apt install -y libssl-dev
wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.10_amd64.deb
dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.10_amd64.deb