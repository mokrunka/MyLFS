# Patch Phase 4
# LFS 13.1 Section 8.71

./configure --prefix=/usr

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

