#! /bin/bash

#set the directory to the folder the script resides in
DIRECTORY=$(cd `dirname $0` && pwd)

# get the hour number, convert to base 10
let hourNum=10#`date "+%H"`

#echo $DIRECTORY/$hourNum

afplay $DIRECTORY/sounds/$hourNum.mp3
