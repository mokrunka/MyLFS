# Gawk Phase 4
# LFS 13.1 Section 8.31

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make

if (( RUN_TESTS )); then
    set +e
    chown -R tester .
    su tester -c "PATH=$PATH make check"
    set -e
fi

rm -f /usr/bin/gawk-5.4.1
make install

ln -sv gawk.1 /usr/share/man/man1/awk.1
install -Dm644 doc/{awkforai.txt,*.{eps,pdf,jpg}} -t /usr/share/doc/gawk-5.4.1


