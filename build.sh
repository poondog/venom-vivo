#!/bin/bash

# Kangaroo Kernel build script thanks to CyanogenMod, anarkia1976

# Kernel Version
#BASE_VER=""
#VER=""
#VER=$BASE_VER$VER

# AK Variables
export LOCALVERSION=""`echo $VER`

# toolchain
export CROSS_COMPILE=${HOME}/Toolchains/arm-eabi-4.7/bin/arm-eabi-

# make .config
make vivo_defconfig
env KCONFIG_NOTIMESTAMP=true \
make ARCH=arm export SUBARCH=arm CROSS_COMPILE=arm-eabi-

# build the kernel

make -j4
