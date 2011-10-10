#
# Regular cron jobs for the wallpaper-eumetsat package
#
0 4	* * *	root	[ -x /usr/bin/wallpaper-eumetsat_maintenance ] && /usr/bin/wallpaper-eumetsat_maintenance
