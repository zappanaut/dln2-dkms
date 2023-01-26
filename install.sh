#!/bin/sh

cp -a src /usr/src/dln2-5.15.0
cp -a udev/*.rules /etc/udev/rules.d/
mkdir /dev/gpio-by-serial
