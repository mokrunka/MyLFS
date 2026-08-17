# GMP Phase 4
# LFS 13.1 Section 8.23

sed -i '/long long t1;/,+1s/()/(...)/' configure
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0

make
make html

if (( RUN_TESTS )); then
    set +e
    make check 
    set -e
fi

make install
make install-html

