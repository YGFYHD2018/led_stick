#!/bin/bash -eu
cp bin/led_stick.service /etc/systemd/system/.

INSTALL_DIR=/opt/led_stick/bin 

mkdir -p $INSTALL_DIR
chmod 755 $INSTALL_DIR
cp bin/led_stick.sh $INSTALL_DIR/.
chown root:root ${INSTALL_DIR}/led_stick.sh
chmod 755 ${INSTALL_DIR}/led_stick.sh


