#!/usr/bin/env bash

sed -i "122,+3G" libSBRdec/src/lpp_tran.cpp
sed -i "/__ANDROID__/,+5d" libSBRdec/src/lpp_tran.cpp

./autogen.sh
./configure \
    --prefix=${INSTALL_DIR} \
    --host=${TARGET} \
    --with-sysroot=${SYSROOT_PATH} \
    --disable-shared \
    --enable-static \
    CC=${FAM_CC} \
    CXX=${FAM_CXX} \
    AR=${FAM_AR} \
    RANLIB=${FAM_RANLIB} \
    STRIP=${FAM_STRIP}|| exit 1

export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lm"

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install
