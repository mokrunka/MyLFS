# Bash Phase 2
# LFS 13.1 Section 6.4

./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc              \
            --docdir=/usr/share/doc/bash-5.3
make
make DESTDIR=$LFS install
ln -s bash $LFS/bin/sh

