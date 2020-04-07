#!/bin/bash
find /usr/lib -type f -name "*.dylib" -name "dyld" -not -name "libobjc.A.dylib" -exec install -D {} qiling/examples/rootfs/x8664_macos/usr/lib/{} \;
