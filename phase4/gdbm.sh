# GDBM Phase 4
# LFS 13.1 Section 8.41

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

