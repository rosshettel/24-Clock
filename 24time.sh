#! /bin/bash

PLAYER="afplay"

# check if we're on a mac or linux box
if [[ `uname` == "Linux" ]]; then
	PLAYER="mpg123"
fi

#set the directory to the folder the script resides in
DIRECTORY=$(cd `dirname $0` && pwd)

# get the hour number, convert to base 10
let hourNum=10#`date "+%H"`

$PLAYER $DIRECTORY/sounds/$hourNum.mp3
