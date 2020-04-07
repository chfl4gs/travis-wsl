#!/bin/bash
find /usr/lib -type f -name "*.dylib" -name "dyld" ! -name "libobjc.A.dylib" -exec cp -v {} qiling/examples/rootfs/x8664_macos/usr/lib/ \;
