qemu-system-aarch64 \
	     -nographic \
	     -kernel linux/arch/arm64/boot/Image \
	     -cpu max,x-rme=on,pmu=on \
	     -smp 1 \
	     -machine virt,secure=on,gic-version=3,virtualization=on,acpi=off \
	     -bios tfa/build/qemu/debug/qemu_fw.bios \
	     -drive file=buildroot/output/images/rootfs.ext4,if=none,format=raw,id=hd0 -device virtio-blk-device,drive=hd0 \
	     -m 8G \
	     -append "rootwait nokaslr root=/dev/vda rw init=/sbin/init console=ttyAMA0" \
	     -serial mon:stdio \
	     -serial tcp:localhost:12345 \
	     -netdev user,id=vmnic -device virtio-net-device,netdev=vmnic
