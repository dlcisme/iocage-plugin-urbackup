#!/bin/sh

# set the data location
DATA_LOCATION="/app-data/urbackup"

# create the data location
mkdir -p $DATA_LOCATION

# make "urbackup" the owner of the data location
chown -R urbackup:urbackup $DATA_LOCATION

# enable UrBackup to start at boot
sysrc "urbackup_server_enable=YES"

# set Nginx config file and data directory location
sysrc "urbackup_server_flags=-c $DATA_LOCATION/urbackupsrv.conf"

# start the urbackup service
# service urbackup start
