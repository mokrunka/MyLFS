# Kbd Phase 4
# LFS 13.1 Section 8.68

patch -Np1 -i ../$(basename $PATCH_KBD)

sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

./configure --prefix=/usr --disable-vlock

make

if (( RUN_TESTS ));
    set +e
    make check
    set -e
fi

make install

cp -R -v docs/doc -T /usr/share/doc/kbd-2.10.0


