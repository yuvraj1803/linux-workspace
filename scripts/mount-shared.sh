set -e
mkdir -p root
mount buildroot/output/images/rootfs.ext4 root
cd root/root
rm -rf *
cp -r ../../shared/. .
cd ../../
umount root
rm -rf root
exit
