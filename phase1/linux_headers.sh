# Linux API headers Phase 1
# LFS 13.1 Section 5.4

make mrproper
make headers

find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr

