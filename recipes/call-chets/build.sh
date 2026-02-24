#!/bin/bash
set -eu

export CXXFLAGS="${CXXFLAGS} -I${PREFIX}/include"
export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"

make CXX="${CXX}" INCLUDES="-I./src -I${PREFIX}/include" LIBS_PATH="-L${PREFIX}/lib" -j${CPU_COUNT}
make install PREFIX="${PREFIX}"
