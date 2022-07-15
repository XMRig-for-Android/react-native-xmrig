#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version="v6.18.0-mo1"

if [ ! -d "xmrig-mo" ]; then
  git clone https://github.com/MoneroOcean/xmrig.git -b ${version} xmrig-mo
else
  cd xmrig-mo
  git checkout ${version}
fi
