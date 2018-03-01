#!/bin/sh -x

TARGETDIR=$1

rm -v ${TARGETDIR}/etc/systemd/system/multi-user.target.wants/mosquitto.service
