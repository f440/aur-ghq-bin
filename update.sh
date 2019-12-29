#!/bin/bash

version=$1
if [ "$1" = "" ]; then
    echo "Usage: $0 VERSION_NUMBER"
    exit 1
fi
echo "version=$version"

curl -sLO https://github.com/motemen/ghq/releases/download/v$version/SHASUMS
shasum=$(grep linux_amd64 SHASUMS | awk '{print $1}')
echo shasum=$shasum
rm -f SHASUMS

sed -i.bak -e "s/^pkgver=.*/pkgver=$version/" -e "s/^sha1sums=.*/sha1sums=('$shasum')/" PKGBUILD
echo update PKGBUILD
rm -f PKGBUILD.bak
