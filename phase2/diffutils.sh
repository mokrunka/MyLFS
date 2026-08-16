# Diffutils Phase 2
# LFS 13.1 Section 6.6

./configure --prefix=/usr  \
            --host=$LFS_TGT  \
            gl_cv_func_strcasecmp_works=y  \
            --build=$(./build-aux/config.guess)

make
make DESTDIR=$LFS install

