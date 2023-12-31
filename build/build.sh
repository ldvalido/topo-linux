apt update 
apt install bzip2 git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev
mkdir -p /target/initramfs
git clone --depth 1 https://github.com/torvalds/linux.git
git clone https://git.busybox.net/busybox/
cd /src/linux
#make menuconfig
make -j 8

#compiled under Mac
#TODO: Change platform dynamically
cp arch/arm64/boot/Image /target

cd /src/busybox
# make menuconfig -- include binary resource in order to avoid any dependeces with external libraries 
# TODO: Add config file
make -j 8
make CONFIG_PREFIX=/target/initramfs install