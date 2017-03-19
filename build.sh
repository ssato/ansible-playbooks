#! /bin/bash
#
# USAGE: [_SNAPSHOT_BUILD=1] ./build.sh
#
set -e

source pkginfo.sh
snapshot_build=${_SNAPSHOT_BUILD:-0}

if test "x$snapshot_build" = "x1"; then
    VERSION="${VERSION:?}.$(date +%Y%m%d)"
fi

echo "[Info] Preparing confgiure.ac for ${PACKAGE:?}-${VERSION:?} ..."
sed "
s/@PACKAGE@/${PACKAGE}/g
s/@VERSION@/${VERSION}/g
" configure.ac.in > configure.ac

echo "[Info] Start to build SRPM ..."
autoreconf -vfi && ./configure && make srpm

# vim:sw=4:ts=4:et:
