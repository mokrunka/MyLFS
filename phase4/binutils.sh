# Binutils Phase 4
# LFS 13.1 Section 8.22

mkdir build
cd build

../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --enable-new-dtags  \
             --with-system-zlib  \
             --with-lib-path=/usr/lib \
             --enable-defualt-hash-style=gnu

make tooldir=/usr

if (( RUN_TESTS )); then
    set +e
    make -k check 
    grep '^FAIL:' $(find -name '*.log')
    set -e
fi

make tooldir=/usr install

rm -rf /usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a \
      /usr/share/doc/gprofng/

