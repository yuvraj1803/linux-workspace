cd rmm
cmake -DRMM_CONFIG=qemu_virt_defcfg -DCMAKE_BUILD_TYPE=Debug -S . -B build/
cmake --build build/ --clean-first
