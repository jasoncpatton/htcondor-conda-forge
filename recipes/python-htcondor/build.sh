#!/bin/bash
set -eux


cmake $SRC_DIR \
       -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
       -DCMAKE_TOOLCHAIN_FILE="${RECIPE_DIR}/cross-linux.cmake" \
       -DUW_BUILD:BOOL=OFF \
       -DCLIPPED:BOOL=ON \
       -DHAVE_BOINC:BOOL=OFF \
       -DENABLE_JAVA_TESTS:BOOL=OFF \
       -DWITH_BLAHP:BOOL=OFF \
       -DWITH_CREAM:BOOL=OFF \
       -DWITH_BOINC:BOOL=OFF \
       -DWITH_SCITOKENS:BOOL=OFF \
       -DCONDA_BUILD:BOOL=ON

make conda_build
