#!/bin/bash -eu

INSTALL_DIR=/opt/led_stick/bin 

sudo sh <<SCRIPT
  cp bin/led_stick.service /etc/systemd/system/.


  mkdir -p $INSTALL_DIR
  chmod 755 $INSTALL_DIR
  cp bin/led_stick.sh $INSTALL_DIR/.
  chown root:root ${INSTALL_DIR}/led_stick.sh
  chmod 755 ${INSTALL_DIR}/led_stick.sh

  systemctl enable led_stick
  systemctl start led_stick
SCRIPT
