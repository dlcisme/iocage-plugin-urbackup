#!/bin/sh

# set the data location
DATA_LOCATION="/app-data/urbackup"

# create the data location
mkdir -p $DATA_LOCATION

# make "urbackup" the owner of the data location
chown -R urbackup:urbackup $DATA_LOCATION

# enable UrBackup to start at boot
sysrc "urbackup_server_enable=YES"

# start the urbackup service
# service urbackup start
