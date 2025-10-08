#!/bin/sh
# Run this to generate configure, Makefile.in's and so on

set -e

if glibtoolize --version > /dev/null 2>&1; then
  LIBTOOLIZE=glibtoolize
else
  LIBTOOLIZE=libtoolize
fi

if autoreconf --version > /dev/null 2>&1; then
  exec autoreconf --install --verbose "$@"
else
  $LIBTOOLIZE --force --copy
  aclocal -I m4
  autoconf
  autoheader
  automake --add-missing --copy
fi

