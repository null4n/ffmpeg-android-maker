#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh

HARFBUZZ_VERSION=7.1.0

downloadTarArchive \
  "harfbuzz" \
  "https://github.com/harfbuzz/harfbuzz/releases/download/${HARFBUZZ_VERSION}/harfbuzz-${HARFBUZZ_VERSION}.tar.xz"
