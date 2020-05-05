#!/bin/sh
. $(dirname $0)/path.sh

if [ -f pycifrw_$VERSION_BASE.orig.tar.gz ]; then
  exit 127
fi
wget https://sourceforge.net/projects/pycifrw.berlios/files/PyCifRW-$VERSION_BASE.tar.gz
tar zxvf PyCifRW-$VERSION_BASE.tar.gz
mv -f PyCifRW-$VERSION_BASE pycifrw_$VERSION_BASE
tar zcvf pycifrw_$VERSION_BASE.orig.tar.gz pycifrw_$VERSION_BASE
rm -rf pycifrw_$VERSION_BASE PyCifRW-$VERSION_BASE.tar.gz
