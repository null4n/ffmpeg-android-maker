#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

#TODO: upgrade to 3.5
LIBX265_VERSION=3.3

downloadTarArchive \
  "libx265" \
  "https://bitbucket.org/multicoreware/x265_git/downloads/x265_${LIBX265_VERSION}.tar.gz"
