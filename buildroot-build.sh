cd buildroot
make qemu_aarch64_virt_defconfig
make -j$(nproc)
