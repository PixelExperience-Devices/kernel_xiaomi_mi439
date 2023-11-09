defconfig=WT_defconfig
CLANG_TRIPLE=aarch64-linux-gnu-
CROSS_COMPILE=$HOME/gcc/bin/aarch64-linux-android-
CROSS_COMPILE_ARM32=$HOME/gcc/bin/arm-linux-androideabi-
ARCH=arm64
SUBARCH=arm64
CC=$HOME/clang/bin/clang
sudo make clean
sudo rm -rf out
sudo make -j$(nproc) -C $(pwd) O=$(pwd)/out CROSS_COMPILE=$CROSS_COMPILE CLANG_TRIPLE=$CLANG_TRIPLE CROSS_COMPILE_ARM32=$CROSS_COMPILE_ARM32 ARCH=$ARCH CC=$CC LLVM=1 SUBARCH=$SUBARCH  $defconfig
sudo make -j$(nproc) -C $(pwd) O=$(pwd)/out CROSS_COMPILE=$CROSS_COMPILE CLANG_TRIPLE=$CLANG_TRIPLE CROSS_COMPILE_ARM32=$CROSS_COMPILE_ARM32 ARCH=$ARCH CC=$CC LLVM=1 SUBARCH=$SUBARCH 
