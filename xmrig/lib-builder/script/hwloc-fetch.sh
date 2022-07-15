#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version=v2.7.1

if [ ! -d "hwloc" ]; then
  git clone https://github.com/open-mpi/hwloc.git -b ${version}
else
  cd hwloc
  git checkout ${version}
fi
