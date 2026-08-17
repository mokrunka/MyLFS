# Xz Phase 4
# LFS 13.1 Section 8.8

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.8.3

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

