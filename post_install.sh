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

## NOTE: we can only mount an empty directory so we will not 
##       create the ../var/backup directory

# set the data location
DATA_LOCATION="/app-data/urbackup"

# set the var/urbackup location
#VAR_LOCATION="/app-data/urbackup/var/backup"

# create the data location
mkdir -p $DATA_LOCATION

# create the var/urbackup location
#mkdir -p $VAR_LOCATION

# make "urbackup" the owner of the data location
chown -R urbackup:urbackup $DATA_LOCATION

# make "urbackup" the owner of the var/urbackup location
#chown -R urbackup:urbackup $VAR_LOCATION

# enable UrBackup to start at boot
sysrc "urbackup_server_enable=YES"

# set UrBackup config file and data directory location
sysrc "urbackup_server_flags=-c $DATA_LOCATION/urbackupsrv.conf"


#NOTE: we meed to mount the external file systems manually first, then we can start the server
# start the urbackup service
# service urbackup start
