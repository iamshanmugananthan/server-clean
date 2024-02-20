Server Cleaning Shell Script

This shell script is designed to help automate the cleanup process on servers, ensuring optimal performance and disk space management. It performs various cleanup tasks including:

    Deleting Specific Files: Removes specific file types such as .zip, .sql, and laravel.log files from the /var/www/html/ directory, commonly found in Laravel projects.

    Removing Date-Named Folders: Deletes folders named with the current date in the /var/www/ directory. This can be useful for removing temporary or outdated directories.

    Cleaning Temporary Files: Removes temporary files older than a certain period from the /tmp directory to free up disk space.

    Unnecessary Package Removal: Utilizes package managers like apt-get (for Debian-based systems) or dnf (for Fedora-based systems) to remove unnecessary packages from the system, optimizing resource usage.

    Disk Cache Clearance: Clears disk cache to improve system performance and reclaim memory.

    Package Cache Cleaning: Cleans package caches to free up additional disk space, depending on the package manager used.

    Log Rotation: Rotates system logs older than 7 days using journalctl, ensuring efficient log management.

Usage:



1. Clone the repository to your server:

       git clone https://github.com/iamshanmugananthan/server-clean.git

2. Make the script executable:

       chmod +x storage-clean.sh

3. Run the script:

       ./server_cleanup.sh

Note:

    Ensure that you have appropriate permissions to execute the commands in the script, especially commands that require superuser privileges (sudo).
    It's recommended to review the script and customize it according to your specific server setup and requirements before executing it in a production environment.
