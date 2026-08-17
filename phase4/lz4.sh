#Lz4 Phase 4
# LFS 13.1 Section 8.9

make BUILD_STATIC=no PREFIX=/usr
make -j1 check
make BUILD_STATIC=no PREFIX=/usr install
