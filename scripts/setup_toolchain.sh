#!/bin/bash -e
REPO_ROOT=$(git rev-parse --show-toplevel)
TOOLCHAIN_TARBALL=arm-buildroot-linux-uclibcgnueabihf_sdk-buildroot.tar.gz
TOOLCHAIN_DIR=${REPO_ROOT}/toolchain/
OUTPUT_DIR=${REPO_ROOT}/output
rm -Rf ${OUTPUT_DIR}
cd ${REPO_ROOT}
make -C buildroot O=${OUTPUT_DIR} BR2_EXTERNAL=${REPO_ROOT}/mb_external raspberrypi_defconfig
cd ${OUTPUT_DIR}
make sdk
mkdir -p ${TOOLCHAIN_DIR}
cp ${OUTPUT_DIR}/images/${TOOLCHAIN_TARBALL} ${TOOLCHAIN_DIR}
cd ${TOOLCHAIN_DIR}
tar xzf ${TOOLCHAIN_TARBALL}
cd ${TOOLCHAIN_TARBALL%.tar.gz}
./relocate-sdk.sh
