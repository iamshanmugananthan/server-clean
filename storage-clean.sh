#!/bin/bash

# Delete specific files in /www/html/ for laravel structure and delete sql file and zip files
sudo find /var/www/html/ -name "*.zip" -type f -delete
sudo find /var/www/html/ -name "*.sql" -type f -delete
sudo find /var/www/html/ -name "laravel.log" -type f -exec truncate -s 0 {} \;


#Delete Date Named Folder
sudo rm -r /var/www/$(date +'%d-%m-%Y')

#Delete Temporary files older than a certain period
sudo find /tmp -type f -mtime +1 -exec rm {} \;


# Remove unnecessary packages
if command -v apt-get &> /dev/null; then
	sudo apt-get autoremove -y
elif command -v dnf &> /dev/null; then
	sudo dnf autoremove -y
fi

# Clear disk cache
sudo sync; echo 1 > /proc/sys/vm/drop_caches
sudo sync; echo 2 > /proc/sys/vm/drop_caches
sudo sync; echo 3 > /proc/sys/vm/drop_caches

# Clean package cache
if command -v apt-get &> /dev/null; then
	sudo apt clean
	sudo apt autoclean
elif command -v yum &> /dev/null; then
	sudo yum clean all
fi

# Clear logs older than 7 days
sudo journalctl --vacuum-time=7d

