cd tfa
make 	CROSS_COMPILE=aarch64-linux-gnu-             \
	PLAT=qemu  \
        DEBUG=1     \
        LOG_LEVEL=40    \
	BL33=../uboot/u-boot.bin \
        ARM_LINUX_KERNEL_AS_BL33=0 \
        QEMU_USE_GIC_DRIVER=QEMU_GICV3      \
        -j$(nproc)      \
        ENABLE_RME=1     \
        RMM=../rmm/build/Debug/rmm.img \
	all fip \
	SPD=none

