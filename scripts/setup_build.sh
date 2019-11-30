#!/bin/bash
REPO_ROOT=$(git rev-parse --show-toplevel)
cd ${REPO_ROOT}
make -C buildroot O=${REPO_ROOT}/output BR2_EXTERNAL=${REPO_ROOT}/mb_external rpi_mb_defconfig
