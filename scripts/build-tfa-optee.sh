cd tfa
make 	    CROSS_COMPILE=aarch64-linux-gnu- \
	     PLAT=qemu \
	     BL33=../edk2/Build/ArmVirtQemuKernel-AARCH64/RELEASE_GCC5/FV/QEMU_EFI.fd \
	     DEBUG=1 \
	     LOG_LEVEL=40 \
	     ARM_LINUX_KERNEL_AS_BL33=0 \
	     QEMU_USE_GIC_DRIVER=QEMU_GICV3 \
	     BL32_RAM_LOCATION=tdram \
	     BL32=../optee/out/arm/core/tee-raw.bin \
	     BL32_EXTRA1=../optee/out/arm/core/tee-pager_v2.bin \
	     BL32_EXTRA2=../optee/out/arm/core/tee-pageable_v2.bin \
	     -j$(nproc) \
	     SPD=opteed
