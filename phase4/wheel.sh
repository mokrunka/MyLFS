# Wheel Phase 4
# LFS 13.1 Section 8.57

pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links dist wheel

