#!/usr/bin/bash

./bootstrap && ./configure LDFLAGS=-static conf_EXTRA_LIBS="-lregex -ltre -lintl -liconv" mconf_EXTRA_LIBS="-lregex -ltre -lintl -liconv" --disable-shared --enable-static --disable-gconf --disable-qconf --disable-nconf --enable-mconf && make LDFLAGS="-all-static -static-libtool-libs"

make install DESTDIR=`pwd`/build
