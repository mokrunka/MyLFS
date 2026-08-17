# Attr Phase 4
# LFS 13.1 Section 8.26

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.6.0

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

