#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

FDKAAC_VERSION=2.0.2

downloadTarArchive \
  "libfdkaac" \
  "https://liquidtelecom.dl.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-2.0.2.tar.gz"
