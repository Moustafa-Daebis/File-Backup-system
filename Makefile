startup_backup:
	if [ -d $(backupdir) ]; then \
	./backupd.sh $(directory) $(backupdir) $(wait_time) $(max_number_of_backups); \
	else \
	mkdir "backupdir"; \
	./backupd.sh $(directory) "backupdir" $(wait_time) $(max_number_of_backups); \
	fi

