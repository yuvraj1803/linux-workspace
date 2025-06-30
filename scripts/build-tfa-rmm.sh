cd tfa
make 	CROSS_COMPILE=aarch64-linux-gnu-             \
	PLAT=qemu  \
        DEBUG=1     \
        LOG_LEVEL=40    \
	BL33=../edk2/Build/ArmVirtQemuKernel-AARCH64/RELEASE_GCC5/FV/QEMU_EFI.fd \
        QEMU_USE_GIC_DRIVER=QEMU_GICV3      \
        -j$(nproc)      \
        ENABLE_RME=1     \
        RMM=../rmm/build/Debug/rmm.img \
	all fip \
	SPD=none
