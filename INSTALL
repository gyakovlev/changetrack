INSTALLATION REQUIREMENTS

This program works on UNIX-type systems. It likely will not work with
any version of Perl before 5.

The emailing functionality requires /usr/sbin/sendmail.

To install changetrack, run `make install`. This will verify that
needed packages are installed, and copy files appropriately. You
should then customize the configuration file and set up a cron job so
changetrack runs periodically. To do this type
  "crontab -e".  This will open your cron tab in your editor. Add a
line like "0 12 * * * changetrack -uq". This will run changetrack
every day at noon.
