# MPFR Phase 4
# LFS 13.1 Section 8.24

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.2

make
make html

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install
make install-html

