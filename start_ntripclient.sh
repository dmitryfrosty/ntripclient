#!/bin/bash

#----------------------------------------------------------
#                     CONFIGURATIONS
#----------------------------------------------------------
# Serial Communication Configurations
SERIAL_PORT="/dev/ttyUSB0"       # Serial port name
SERIAL_BAUDRATE=115200           # Serial baudrate
SERIAL_TIMEOUT=1                 # Serial timeout

# NTRIP Client Configurations
NTRIP_SERVER="ntrip.eftgroup.ru"  # NTRIP server
NTRIP_PORT=7054                  # NTRIP port
NTRIP_VERSION=1        # NTRIP version
MOUNTPOINT="be"          # NTRIP mountpoint
USERNAME="bebebe"              # NTRIP server username
PASSWORD="bebebe"              # NTRIP server password
#----------------------------------------------------------


python3 ntripclient/__main__.py \
    -p $SERIAL_PORT \
    -b $SERIAL_BAUDRATE \
    -t $SERIAL_TIMEOUT \
    -S $NTRIP_SERVER \
    -P $NTRIP_PORT \
    -V $NTRIP_VERSION \
    -M $MOUNTPOINT \
    -U $USERNAME \
    -W $PASSWORD
