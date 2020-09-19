# iocage-plugin-urbackup
Artifact file(s) for iocage urbackup plugin.

NOTE: If upgrading don't forget to remove the "-c (config location)" from "/usr/local/etc/rc.d/urbackup_server" as the location for the the config file is set in the "rc.conf" file.

NOTE: If moving servers copy "/var/urbackup/*" to same location on new server.
NOTE: If mounting the file location "/var/urbackup" you must clear out "/var/urbackup" in jail before mounting as locations can only be mounted to an empty directory.
NOTE: "/var/urbackup" is stored in app-data out of the jail so the data is not lost if jail exploids.
