# mpdecimal Phase 4
# LFS 13.1 Section 8.53

./configure --prefix=/usr \
            --disable-static \
            --docdir=/usr/share/doc/mpdecimal-4.0.1

make

if (( RUN_TESTS )); then
    set +e
    make check_local
    set -e
fi

make install
