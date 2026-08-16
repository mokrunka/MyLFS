# Gzip Phase 2
# LFS 13.1 Section 6.11

./configure --prefix=/usr --host=$LFS_TGT

make
make DESTDIR=$LFS install

