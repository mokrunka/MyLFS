# Pkg-config Phase 4
# LFS 13.1 Section 8.21

tar -xf ../meson-1.12.0.tar.gz

mkdir build
cd build

python3 ../meson-1.12.0/meson.py setup --prefix=/usr --buildtype=release ..

ninja

ninja install
mv /usr/share/doc/pkgconf{,-3.0.5}

#./configure --prefix=/usr              \
#            --disable-static           \
#            --docdir=/usr/share/doc/pkg-config-2.5.1

#make

#make install

ln -s pkgconf   /usr/bin/pkg-config
ln -s pkgconf.1 /usr/share/man/man1/pkg-config.1
