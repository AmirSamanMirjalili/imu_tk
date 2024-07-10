# armv7-toolchain.cmake
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Specify the cross compiler
set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
set(CMAKE_LINKER arm-linux-gnueabihf-ld)
set(CMAKE_AR arm-linux-gnueabihf-ar)
set(CMAKE_ASM_COMPILER arm-linux-gnueabihf-as)

# Specify the sysroot (optional, if you have a sysroot)
# set(CMAKE_SYSROOT /path/to/sysroot)

# Specify the path to the toolchain
set(TOOLCHAIN_PATH /usr/arm-linux-gnueabihf)
set(CMAKE_FIND_ROOT_PATH ${TOOLCHAIN_PATH})

# Search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Search for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)