# IPRoute2 Phase 4
# LFS 13.1 Section 8.67

sed -i /ARPD/d Makefile
rm -f man/man8/arpd.8

make NETNS_RUN_DIR=/run/netns

make SBINDIR=/usr/sbin install

install -Dm644 COPYING README* -t /usr/share/doc/iproute2-7.1.0

