# Python Phase 4
# LFS 13.1 Section 8.54

patch -Np1 -i ../$(basename $PATCH_PYTHON_OPENSSL)

./configure --prefix=/usr                 \
            --enable-shared               \
            --with-system-expat           \
            --without-static-libpython    \
            --enable-optimizations

make

if (( RUN_TESTS )); then
    set +e
    make test TESTOPTS="--timeout 120"
    set -e
fi

make install

cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF

install -dm755 /usr/share/doc/python-3.14.7/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.14.7/html \
    -xvf ../$(basename $PKG_PYTHONDOCS)

