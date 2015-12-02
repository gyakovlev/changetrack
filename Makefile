test:
	@sh test.sh

install: test
	cp changetrack /usr/local/bin/
	cp changetrack.man /usr/local/man/man1/
	cp changetrack.conf /etc/
	@echo "Examine and customize /etc/changetrack.conf."
	@echo "Add changetrack to your crontab."


