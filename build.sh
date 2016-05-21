#!/bin/bash -x

TMPDIR=/tmp/netdata
URL_PREFIX=https://github.com/firehol/netdata/releases/download

if [[ "x$1" = "x" ]]; then
    cat <<EOF
Usage:
    $0 <version>
EOF
    exit
else
    VERSION="$1"
fi

BASEDIR="${TMPDIR}/netdata-${VERSION}"
TARBALL="netdata-${VERSION}.tar.gz"
URL="${URL_PREFIX}/v${VERSION}/${TARBALL}"

rm -rf -- "${TMPDIR}"
mkdir -p "${TMPDIR}"

wget -c -O "${TMPDIR}/${TARBALL}" -- "${URL}"
tar -zxv -C "${TMPDIR}" -f "${TMPDIR}/${TARBALL}"
cp -R debian/ "${BASEDIR}/"
