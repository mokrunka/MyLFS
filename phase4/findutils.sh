# Findutils Phase 4
# LFS 13.1 Section 8.63

./configure --prefix=/usr --localstatedir=/var/lib/locate

make

if (( RUN_TESTS )); then
    set +e
    chown -R tester .
    su tester -c "PATH=$PATH make check"
    set -e
fi

make install

