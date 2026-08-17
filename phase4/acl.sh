# Acl Phase 4
# LFS 13.1 Section 8.27

./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.4.0

make

if (( RUN_TESTS )); then
    set -e
    make check
    set +e
fi

make install

