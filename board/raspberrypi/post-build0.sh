#!/bin/sh

set -u
set -e

INSTALL_MODULES_DIR="output/target/lib/modules"
INSTALL_IMAGES_DIR="output/images"

cp -r ${TARGET_DIR}/lib/modules/* ${INSTALL_MODULES_DIR}
cp -v ${BINARIES_DIR}/zImage ${INSTALL_IMAGES_DIR}/kernel.img
cp -v ${BINARIES_DIR}/*.dtb ${INSTALL_IMAGES_DIR}

exec board/raspberrypi0/post-build.sh
