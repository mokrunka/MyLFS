# Grub Phase 4
# LFS 13.1 Section 8.65

sed 's/--image-base/--nonexist-linker-option/' -i configure

echo depends bli part_gpt > grub-core/extra_deps.lst

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make

make install

grub-install $LOOP --target i386-pc
