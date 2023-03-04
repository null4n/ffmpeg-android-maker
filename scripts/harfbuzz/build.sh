#!/usr/bin/env bash

autoreconf -fiv
./configure \
    --prefix=${INSTALL_DIR} \
    --host=${TARGET} \
    --with-sysroot=${SYSROOT_PATH} \
    --disable-shared \
    --enable-static \
    --disable-gtk-doc \
    --disable-gtk-doc-html \
    CC=${FAM_CC} \
    CXX=${FAM_CXX} \
    AR=${FAM_AR} \
    RANLIB=${FAM_RANLIB} \
    STRIP=${FAM_STRIP}|| exit 1

export FFMPEG_EXTRA_LD_FLAGS="${FFMPEG_EXTRA_LD_FLAGS} -lm"

${MAKE_EXECUTABLE} clean
${MAKE_EXECUTABLE} -j${HOST_NPROC}
${MAKE_EXECUTABLE} install
