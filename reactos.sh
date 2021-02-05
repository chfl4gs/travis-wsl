#!/bin/bash

declare -a StringArray=("advapi32.dll" "rpcrt4.dll" "crypt32.dll" "iphlpapi.dll" "kernel32.dll" "KernelBase.dll" "mpr.dll" "msvcp60.dll" "msvcrt.dll" "netapi32.dll" "ntdll.dll" "ole32.dll" "urlmon.dll" "user32.dll" "wsock32.dl" "version.dll" "winmm.dll" "comctl32.dll" "wininet.dll" "psapi.dll" "userenv.dll" "uxtheme.dll" "gdi32.dll" "comdlg32.dll" "shell32.dll" "oleaut32.dll" "vcruntime140.dll" "winhttp.dll" "wininet.dll" "ws2_32.dll" "msvcr110.dll" "api-ms-win-crt-stdio-l1-1-0.dll" "api-ms-win-crt-runtime-l1-1-0.dll" "api-ms-win-crt-math-l1-1-0.dll" "api-ms-win-crt-locale-l1-1-0.dll" "api-ms-win-crt-heap-l1-1-0.dll" "api-ms-win-core-synch-l1-2-0.dll" "api-ms-win-core-fibers-l1-1-1.dll" "api-ms-win-core-localization-l1-2-1.dll" "api-ms-win-core-sysinfo-l1-2-1.dll" "shlwapi.dll" "setupapi.dll" "ntoskrnl.exe" "XpsPrint.dll")
 
# Iterate the string array using for loop


for val in ${StringArray[@]}; do
   find /usr/src/reactos_dll -name "$val" -print -exec install -v {} examples/rootfs/x86_windows/Windows/System32/ \;
   find /usr/src/reactos_dll -name "$val" -print -exec install -v {} examples/rootfs/x8664_windows/Windows/System32/\;
done
