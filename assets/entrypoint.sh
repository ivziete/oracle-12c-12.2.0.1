#!/usr/bin/env bash
mount -o remount,size=8G /dev/shm
set -e
source /assets/colorecho

if [ ! -d "/opt/oracle/app/product/12.2.0/dbhome_1" ]; then
	echo_yellow "Database is not installed. Installing..."
	/assets/install.sh
fi

su oracle -c "/assets/entrypoint_oracle.sh"

