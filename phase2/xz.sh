# Xz Phase 2
# LFS 13.1 Section 6.16

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.8.3

make
make DESTDIR=$LFS install

rm $LFS/usr/lib/liblzma.la

