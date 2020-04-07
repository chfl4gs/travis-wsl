#!/bin/bash
cp /usr/lib/dyld qiling/examples/rootfs/x8664_macos/usr/lib/;
find /usr/lib -type f -name "*.dylib" -not -name "libobjc.A.dylib" -exec install -v {} qiling/examples/rootfs/x8664_macos/{} \;
