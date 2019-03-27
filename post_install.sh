#!/bin/sh

##Brief USAGE:
##   /usr/local/bin/urbackupsrv run  [-i] [-j <num>] [-g <bytes>] [-c <path>]
##                                   [-u <user>] [-s <path>] [-b <network
##                                   interface name>] ...  [-w <path>] [-e]
##                                   [-d] [-t] [-v <debug|info|warn|error>]
##                                   [-l <path>] [-p <port number>] [-f <port
##                                   number>] [--] [--version] [-h]

## For complete USAGE and HELP type:
##   /usr/local/bin/urbackupsrv run --help

# set the data location
DATA_LOCATION="/app-data/urbackup"

# create the data location
mkdir -p $DATA_LOCATION

# make "urbackup" the owner of the data location
chown -R urbackup:urbackup $DATA_LOCATION

# make "urbackup_server" executable
chmod +x /usr/local/etc/rc.d/urbackup_server

# enable UrBackup to start at boot
sysrc "urbackup_server_enable=YES"

# set Nginx config file and data directory location
sysrc "urbackup_server_flags=-c $DATA_LOCATION/urbackupsrv.conf"

# start the urbackup service
# service urbackup start
