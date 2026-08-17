# Kmod Phase 4
# LFS 13.1 Section 8.59

mkdir -p build
cd       build

meson setup --prefix=/usr ..       \
            --buildtype=release    \
            -D manpages=false

ninja

ninja install

