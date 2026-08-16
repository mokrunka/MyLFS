# Python Phase 3
# LFS 13.1 Section 7.12

./configure --prefix=/usr       \
            --enable-shared     \
            --without-ensurepip \
            --without-static-libpython

make
make install

