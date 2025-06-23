
# HowTo: Prepare Workspace

1. Before getting started, you will have to bring in all the submodules:

+ Linux (this is not Torvalds' tree, but mine)

+ U-Boot

+ TF-A

+ OP-TEE

For this, run:

    chmod +x install-workspace.sh
    ./install-workspace.sh

2. Build all components:

    ```chmod +x linux-build.sh
    chmod +x optee-build.sh
    chmod +x buildroot-build.sh
    chmod +x tfa-build.sh
    chmod +x uboot-build.sh
    ./linux-build.sh
    ./buildroot-build.sh
    ./uboot-build.sh
    ./optee-build.sh (*) 
    ./tfa-build.sh (*)
    ```

    (*) => These are not necessary if you dont intend to boot from TF-A

# HowTo: Run

1. If you want to run without TF-A:

    ```chmod +x no-tfa-run.sh
    ./no-tfa-run.sh

2. If you want to run with TF-A and OP-TEE:
   
    ```
    chmod +x tfa-run.sh
    chmod +x swc.sh

    Open another terminal:

    (Terminal 2)
       ./swc.sh
    (Terminal 1)
       ./tfa-run.sh
