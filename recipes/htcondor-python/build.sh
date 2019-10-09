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
if [ "$PY3K" == "1" ]; then
    make python3_bindings
else
    make python_bindings
fi
make install
