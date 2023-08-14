#!/bin/bash
#
# Kills a running instance of DropboxMacUpdate.
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
