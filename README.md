# dmu-killer
Simple script to kill DropboxMacUpdate autoupdate process on Mac OS X

DropboxMacUpdate automatically connects to the internet and downloads the
latest update packages to keep Dropbox up to date. The download sizes are
quite large and for users on a limited internet connection this can quickly
use up a sizeable percentage of available bandwidth.
This simple script checks to see if there is an instance of the service
running and if so kills it. 
 
Add it to a crontab list so that the system checks and kills. I put my 
version of the script in the following location:

`~/.scripts`

I use the following crontab to execute it every second to preserve my bandwidth:

```*/1 * * * * cd ~/.scripts && ./dmu-killer.sh```
 
Be sure to make the script executable:

`$ chmod + x ~/.scripts/dmu-killer.sh`
