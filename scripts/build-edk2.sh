cd edk2
source edksetup.sh
make -j -C BaseTools
export GCC5_AARCH64_PREFIX=aarch64-linux-gnu-
build -b RELEASE -a AARCH64 -t GCC5 -p ArmVirtPkg/ArmVirtQemuKernel.dsc
