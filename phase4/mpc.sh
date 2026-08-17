# MPC Phase 4
# LFS 13.1 Section 8.25

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.4.1

make
make html

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install
make install-html

