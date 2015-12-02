USE

Changetrack is a program to monitor changes to a bunch of files. If files
are modify one day, and the machine start working incorrectly some days
later, Changetrack can  provide information on  which files were
modified, and help locate the problem. Changetrack will also allow recovery
of the files from any stage.

This program makes human-readable output, and also uses RCS to allow 
recovery of any stage of revision.

CONFIGURATION

Files are listed in ~/.changetrackrc or (/etc/changetrack.conf if run
as root), and numerous commandline options are available. List them
by tying "changetrack -h".

Each line in the file can contain file match patterns usable by glob
or find2perl. See the included changetrack.conf for examples.

MAINTENANCE

It probably would be a good idea to go through and delete extremely out of
date changes, to prevent confusion and excessive disk usage.

SCHEDULE

Changetrack is generally run from the crontab. If you are just worried
about occassional changes, running it daily should be sufficient. If you
are doing very intense modifications, it might be reasonable to run it
every hour (or even more frequently).

To keep track of shutdowns and reboots, and especially unplanned reboots
(crashes), run Changetrack with the option "-m shutdown" in a shutdown
script, and with a "-m startup" in a startup script. This will put the
shutdown/startup message in each file, after any other changes have been
listed. Any "startup" message without a preceding "shutdown" message
indicates that the machine was not properly shut down. (This may be more
annoyance than help on any machine which is frequently shut down.)

TODO

* Automate removal of out-of-date changes, to save disk space and clarify
  the important changes.
* Fix any bugs (see the manual).

GETTING CHANGETRACK

Changetrack is available at http://changetrack.sourceforge.net/
