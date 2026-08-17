# Grep Phase 4
# LFS 13.1 Section 8.38

sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr

make

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

