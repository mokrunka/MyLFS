# Libffi Phase 4
# LFS 13.1 Section 8.51

./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native \

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

