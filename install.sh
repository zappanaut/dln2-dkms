#!/bin/sh

VERSION=5.15.0
MODULE_NAME=dln2


#
#  udev
#
cp -a udev/*.rules /etc/udev/rules.d/
mkdir /dev/gpio-by-serial


#
#  dkms
#
DKMS_ROOT_PATH=/usr/src/${MODULE_NAME}-${VERSION}

mkdir -p ${DKMS_ROOT_PATH}
cp src/* ${DKMS_ROOT_PATH}

sed -e "s/%VERSION%/${VERSION}/" -i ${DKMS_ROOT_PATH}/dkms.conf

dkms add ${MODULE_NAME}/${VERSION}
dkms build ${MODULE_NAME}/${VERSION}
dkms install ${MODULE_NAME}/${VERSION}

# uninstall
# dkms remove ${MODULE_NAME}/${VERSION} --all
# rm -rf ${DKMS_ROOT_PATH}
