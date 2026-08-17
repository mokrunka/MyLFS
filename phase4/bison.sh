# Bison Phase 4
# LFS 13.1 Section 8.37
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

