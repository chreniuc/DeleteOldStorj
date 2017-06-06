#!/bin/bash
#Delete old logs made by StorjShare

#change this to your path or paths
declare -a PATHS=("/home/storj/.config/storjshare/logs/")
#for multiple paths: declare -a PATH_LOG=("/home/storj/.config/storjshare/logs/" "/media/HDD/Downloads/storj")
for path in "${PATHS[@]}"
do
   cd $path

   #this is how a log file look like f7c5585f34b1beff440c0c406d3132373a1deae4_2017-6-6.log, so there are no 0 in front of 6
   #the line "-" between % and "m" or "d" removes the 0 from months and days that are like this 01, 02 .. 09
   ls | grep $(date +%Y-%-m-%-d) -v | grep 'daemon' -v | while read -r file ; do
     #We get the files that do not contain today's date or 'daemon' in their name
     #then we remove each one
     rm $file
   done
done

#00 09 * * * /path/to/cleanStorj.sh
#everyday at 09:00
