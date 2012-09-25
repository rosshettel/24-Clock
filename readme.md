24 Clock
========

Inspired by a coworker harmlessly asking one day, "Hey, could you make my hourly chime in OS X sound like the opening to the TV show 24?"

And also, because everyone needs a bit more dramatic narration in their life.

**24 Clock** is a simple script that will play the appropriate opening sound bite from the TV show 24 at every hour. 

Note that this means it will make noise for ALL of the 24 hours in a day, so don't put this in a place where you sleep. It does, however, make a great interruption for any late night parties that tend to happen.

Compatailibity
--------------

Since **24 Clock** uses cron to run on each hour, this means it is Linux and Mac friendly. Sorry Windows people.

*Since Linux doesn't have `afplay`, the script uses `mpg123` instead, either make sure you have that installed or change it to whichever player you have. The Linux side of things are untested. Thanks to [criswell](http://www.reddit.com/r/commandline/comments/10gksa/my_hourly_chime_script_that_plays_the_following/c6dawjf?context=2).*


Installation
------------

Installation is as easy as running a script from your terminal. When you download or clone the project, open a terminal window and navigate to the project folder.

From there, simply run the command `./install.sh`.

This will copy the project files to the directory `~/Library/Scripts/24Clock`. If you want to install it somewhere else, you can edit the path in the install.sh file.

Once the files are copied over, the script adds the cron entry, and then plays the hourly message once to make sure everything works before exiting. 

After the install scripts runs, you may delete the original project folder.