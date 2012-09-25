#! /bin/bash

# Install Directory
install_dir="$HOME/Library/Scripts/24Clock"
# Cron Entry
cron_entry="0 * * * * $install_dir/24time.sh"

echo -e "This will install the 24 Clock to this directory:\n $install_dir"

# get the path where this is installed
PWD=`pwd`

# make the install director if it doesn't exist
if [ ! -d "$install_dir" ]; then
	mkdir -p $install_dir
fi

# copy over the files
echo -e "\nInstalling files"
echo -e "================"
rsync -rv --exclude=.git . "$install_dir"

echo -e "\nInstalling crontab"
echo -e "=================="

tmp=${TMPDIR:-/tmp}/cron.$$
crontab -l > $tmp
echo -e "$cron_entry" >> $tmp
crontab < $tmp
rm -rf $tmp

crontab -l

# run the 24 clock, so we can hear that it's working
`$install_dir/24time.sh`