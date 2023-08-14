#!/bin/bash
#
# Kills a running instance of DropboxMacUpdate.
#
# DropboxMacUpdate automatically connects to the internet and downloads the
# latest update packages to keep Dropbox upto date. The download sizes are
# quite large and for users on a limited internet connection this can quickly
# use up a sizeable percentage of available bandwidth.
# This simple script checks to see if there is an instance of the service
# running and if so kills it. 
# 
# Add it to a crontab list so that the system checks and kills. I put my 
# version of the script in the following location:
# ~/.scripts
# I use the following crontab to execute it every second to preserve my bandwidth:
#
# */1 * * * * cd ~/.scripts && ./dmu-killer.sh
# 
# Be sure to make the script executable: $ chmod + x ~/.scripts/dmu-killer.sh
#
# @author   Alex Adams <alex@jujudigital.com>
# @version  1.0.0
# @date     2023-03-24
# @licence  MIT

id=`pgrep DropboxMacUpdate`

if [ $id ]; then 
    echo DropboxMacUpdate is running under pid $id
    echo Killing DropboxMacUpdate
    kill $id
    echo "it's dead!"
fi
exit 0