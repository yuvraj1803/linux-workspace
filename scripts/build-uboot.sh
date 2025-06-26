cd uboot
make qemu_arm64_defconfig
make -j$(nproc)
