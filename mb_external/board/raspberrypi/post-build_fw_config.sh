#!/bin/bash
FW_CONFIG=${BINARIES_DIR}/rpi-firmware/config.txt
echo "dtparam=audio=on" >> ${FW_CONFIG}
