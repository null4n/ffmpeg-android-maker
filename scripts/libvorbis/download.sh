#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

VORBIS_VERSION=1.3.7

downloadTarArchive \
  "libvorbis" \
  "https://downloads.xiph.org/releases/vorbis/libvorbis-${VORBIS_VERSION}.tar.gz"
