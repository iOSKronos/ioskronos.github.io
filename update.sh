#!/bin/bash
cd "$(dirname $0)"
rm -f Packages
rm -f Packages.xz
rm -f Packages.zst
dpkg-scanpackages debs /dev/null > Packages
xz -c9 Packages > Packages.xz
zstd -q -19 Packages
