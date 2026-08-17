# Coreutils Phase 4
# LFS 13.1 Section 8.61

patch -Np1 -i ../$(basename $PATCH_COREUTILSINTL)

autoreconf -fv
automake -af
FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/usr            \

make

if (( RUN_TESTS )); then
    set +e
    make NON_ROOT_USERNAME=tester check-root
    groupadd -g 102 dummy -U tester
    chown -R tester . 
    su tester -c "PATH=$PATH make RUN_EXPENSIVE_TESTS=yes check" \
       < /dev/null
    groupdel dummy
fi

make install

mv /usr/bin/chroot /usr/sbin
mv /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8

