#!/bin/sh

set -u
set -e

INSTALL_IMAGES_DIR="output/images"

cp -v ${BINARIES_DIR}/rootfs.cpio.gz ${INSTALL_IMAGES_DIR}
