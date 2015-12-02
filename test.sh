#!/bin/sh

if [ ! `which perl` ] ; then
    echo "This program requires Perl."
    exit 1
fi

FAILCHANGETRACKTEST=
for I in File::Copy Getopt::Std File::Path FileHandle strict;
  do
  echo "Checking $I..."

	perl -e "use $I;"
  if [ "$?" -ne 0 ] ; then
			echo "Perl library '$I' is not installed.\nYou might find it here: http://search.cpan.org/search?query=$I" 
			FAILCHANGETRACKTEST=-1
	fi
done

rcs -V >/dev/null
if [ "$?" -ne 0 ] ; then
		echo "RCS is not installed."
		FAILCHANGETRACKTEST=-1
fi

if [ $FAILCHANGETRACKTEST ] ; then 
		exit 1
fi
