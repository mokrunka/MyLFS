# Gperf Phase 4
# LFS 13.1 Section 8.42

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.3

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

