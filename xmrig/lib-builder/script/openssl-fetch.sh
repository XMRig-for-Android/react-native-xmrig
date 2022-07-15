#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

OPENSSL_VERSION="1.1.1o"

if [ ! -d "openssl" ]; then
  wget https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz -O openssl.tar.gz
  tar -xvf openssl.tar.gz
  mv openssl-${OPENSSL_VERSION} openssl
fi
