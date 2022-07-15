#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version="v6.18.0"

if [ ! -d "xmrig" ]; then
  git clone https://github.com/xmrig/xmrig.git -b ${version}
  cd ..
  cd ..
  patch build/src/xmrig/src/net/strategies/DonateStrategy.cpp ./xmrig.patch --force
else
  cd xmrig
  git checkout ${version}
  cd ..
  cd ..
  cd ..
  patch build/src/xmrig/src/net/strategies/DonateStrategy.cpp ./xmrig.patch --force
fi
