#!/bin/sh
find . -type f -name "/usr/lib/*.dylib" -not -iname '*/libobjc.A.dylib/*' -exec cp -v {} $TRAVIS_BUILD_DIR/qiling/examples/rootfs/x8664_macos/usr/lib/{} \;
