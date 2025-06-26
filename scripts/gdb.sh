gdb-multiarch	    -ex "set confirm off" \
	    -ex "add-symbol-file rmm/build/Debug/rmm.elf" \
	    -ex "add-symbol-file tfa/build/qemu/debug/bl1/bl1.elf" \
	    -ex "add-symbol-file tfa/build/qemu/debug/bl2/bl2.elf" \
	    -ex "add-symbol-file tfa/build/qemu/debug/bl31/bl31.elf" \
	    -ex "add-symbol-file linux/vmlinux" \
	    -ex "add-symbol-file optee/out/arm/core/tee.elf" \
	    -ex "add-symbol-file uboot/u-boot" \
	    -ex "target remote localhost:1234" 
