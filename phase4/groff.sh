# Groff Phase 4
# LFS 13.1 Section 8.64

PAGE=letter ./configure --prefix=/usr

make -j1

if (( RUN_TESTS )); then
    set +e
    make check
    set -e
fi

make install

