# Enable NEON for all ARM processors
set(ANDROID_ARM_NEON TRUE)

# By including this file all necessary variables that point to compiler, linker, etc.
# will be setup. Well, almost all.
# Two variables have to be set before this line though:
# ANDROID_PLATOFORM - the API level to compile against (number)
# ANDROID_ABI - the ABI of the target platform
include("$ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake")

if("${ANDROID_ABI}" STREQUAL "armeabi-v7a")
  set(CROSS_COMPILE_ARM 1)
  set(CMAKE_SYSTEM_PROCESSOR armv7l)
endif()

if("${ANDROID_ABI}" STREQUAL "arm64-v8a")
  set(CROSS_COMPILE_ARM64 1)
  set(CMAKE_SYSTEM_PROCESSOR aarch64)
endif()

# AV1 Codec Library doesn't recognise 'Android' as CMAKE_SYSTEM_NAME
# We should set it to Linux instead
set(CMAKE_SYSTEM_NAME "Linux")
