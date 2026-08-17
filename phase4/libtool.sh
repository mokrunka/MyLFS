# Libtool Phase 4
# LFS 13.1 Section 8.40

./configure --prefix=/usr

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

rm -f /usr/lib/libltdl.a

