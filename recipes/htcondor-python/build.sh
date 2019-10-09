#!/bin/bash
set -eux


cmake $SRC_DIR \
       -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
       -DUW_BUILD:BOOL=OFF \
       -DCLIPPED:BOOL=ON \
       -DHAVE_BOINC:BOOL=OFF \
       -DENABLE_JAVA_TESTS:BOOL=OFF \
       -DWITH_BLAHP:BOOL=OFF \
       -DWITH_CREAM:BOOL=OFF \
       -DWITH_BOINC:BOOL=OFF
make python_bindings
make install
