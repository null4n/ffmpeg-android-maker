#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

FREETYPE_VERSION=2.13.2

downloadTarArchive \
  "libfreetype" \
  "https://download-mirror.savannah.gnu.org/releases/freetype/freetype-${FREETYPE_VERSION}.tar.gz"
