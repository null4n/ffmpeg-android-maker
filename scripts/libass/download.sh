#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

LIBASS_VERSION=0.17.1

downloadTarArchive \
  "libass" \
  "https://github.com/libass/libass/releases/download/${LIBASS_VERSION}/libass-${LIBASS_VERSION}.tar.gz"
