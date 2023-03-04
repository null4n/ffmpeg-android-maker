#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

OGG_VERSION=1.3.5

downloadTarArchive \
  "libogg" \
  "https://downloads.xiph.org/releases/ogg/libogg-${OGG_VERSION}.tar.gz"
