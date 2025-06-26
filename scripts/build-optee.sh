cd optee/
make 	CFG_ASLR=n \
	CROSS_COMPILE=aarch64-linux-gnu- \
	CROSS_COMPILE_core=aarch64-linux-gnu- \
	CROSS_COMPILE_ta_arm64=aarch64-linux-gnu- \
	PLATFORM=vexpress-qemu_armv8a \
	O=out/arm/ \
	CFG_USER_TA_TARGETS=ta_arm64 \
	CFG_ARM64_core=y \
	CFG_TEE_CORE_LOG_LEVEL=3 \
	CFG_CORE_ASLR=n \
	CFG_ARM_GICV3=y \
	DEBUG=1 
