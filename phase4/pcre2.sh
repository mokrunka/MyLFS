# Pcre2 Phase 4
# LFS 13.1 Section 8.13

./configure --prefix=/usr    \
            --docdir=/usr/share/doc/pcre2-10.47 \
            --enable-unicode \
            --enable-jit \
            --enable-pcre2-16 \
            --enable-pcre2-32 \
            --enable-pcre2grep-libz \
            --enable-pcre2test-libreadline \
            --disable-static

make

if (( RUN_TESTS )); then
    set +e
    make -k check
    grep '^FAIL:' $(find -name '*.log')
    grep -e
fi

make install
