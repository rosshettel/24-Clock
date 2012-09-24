24 Clock
========

Inspired by a coworker harmlessly asking one day, "Hey, could you make my the hourly chime in OS X sound like the opening to the TV show 24?"

And also, because everyone needs a bit more dramatic narration in their life.

**24 Clock** is a simple script that will play the appropriate opening sound bite from the TV show 24 at every hour. 

Note that this means it will make noise for ALL of the 24 hours in a day, so don't put this in a place where you sleep. It does, however, make a great interruption for any late night parties that tend to happen.


Installation
------------

Installation is as simple as making a new cron entry (which means **24 Clock** is both Linux and Mac friendly. Sorry Windows people).

From the command line, run `crontab -e`

That will open up vi (or whichever editor is your default). Enter a line similar to the one below:

`0 * * * * /Library/Scripts/24sounds/24time.sh`

Make sure to include the actual path to wherever you placed your script.


*This will be made into a installer script soon*