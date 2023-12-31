# topo-linux

Using kernel 6.7

My own linux from scratch, it is only a lab project.
This version is not able to use in a productive environment neither in a dev environment

Execute the following commands:

1.- docker run --privileged -it debian

Off course, you can use your favorite debian distro. In my case, I would prefer debian for this experiment.
2.- apt update 
This command should be executed into the docker instance in order to update dependencies and packages.

3.- apt install bzip2 git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev
Install the above packages to compile the image

4.- git clone --depth 1 https://github.com/torvalds/linux.git
Clone Linux kernel repository locally

5.- cd linux
6.- make menuconfig
7.- make -j 8