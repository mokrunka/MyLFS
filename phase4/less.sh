# Less Phase 4
# LFS 13.1 Section 8.45

./configure --prefix=/usr --sysconfdir=/etc

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

