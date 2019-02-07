#!/bin/bash


echo "--------------------------------------------"
echo "Welcome To Kernel Source"
echo "Lets Compile kernel sit Back Have A coffee "
echo "--------------------------------------------"


cd
git clone https://github.com/milindjon/aarch64-linux-android-4.9.git aarch64-linux-android-4.9
cd kernel
rm -r output
export ARCH=arm64
export CROSS_COMPILE=/home/ubuntu/aarch64-linux-android-4.9/bin/aarch64-linux-android-
clear
mkdir output
make -C $(pwd) O=output B2N_defconfig
make -j32 -C $(pwd) O=output
cp -r output/arch/arm64/boot/Image.gz-dtb /home/ubuntu/kernel/B2N
cd B2N
zip -r B2N_Sprout_8.1.0_RV-3.0-KERNEL-By-Raghuvarma.zip META-INF patch tools Image.gz-dtb anykernel.sh
gdrive upload B2N_Sprout_8.1.0_RV-3.0-KERNEL-By-Raghuvarma.zip
cd ..


echo "--------------------------------------------"
echo "All Right now flash at your own risk"
echo "Flashable Zip located in RV Folder"
echo "Good Bye ..!! @ RaghuVarma "
echo "--------------------------------------------"
