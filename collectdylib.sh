#!/bin/sh
find /usr/lib  -type f -name "*.dylib" -not -iname '*/libobjc.A.dylib/*' -exec cp -v {} qiling/examples/rootfs/x8664_macos/usr/lib/ \;
