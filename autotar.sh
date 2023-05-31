#!/bin/bash
#a simple script to backup of server files into separate files

#defining variables for output and file names

coretar=server_core_
auxtar=server_aux_
timestampval=$(date +"%Y-%m-%d")

#gzips both the core and games files, timestamps them.

tar -czvf /home/$USER/backups/$coretar$timestampval.tar.gz <directories you want zipped here>
tar -czvf /home/$USER/backups/$auxtar$timestampval.tar.gz <directories you want zipped here

#simple notification, makes a file in login user home dir notifying backups should be good to pull.

touch /home/$USER/BACKUPS_READY

#change ownership to server manager for sftp, The file will be able to be grabbed, but in case you choose to persist groups and other ownership it is changed to the user.
#You only need read permissions to download a file via SFTP, unless your system has different UMASK values, then the default is 0644
chown servman /home/$USER/backups/$coretar$timestampval.tar.gz
chown servman /home/$USER/backups/$auxtar$timestampval.tar.gz

#add this to the crontab with the correct permissions. More than likely root
# <sudo> crontab -e
# 0 0 1 * * <autotar.sh script location>
