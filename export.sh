#!/bin/bash
_os="`uname`"
_now=$(date +"%m_%d_%Y")
_file="vendor/db_backup/data_$_now.sql"

# Export dump
# docker exec 08b58ffa4bd9 /usr/bin/mysqldump -u dbuser --password=dbpass wordpress > vendor/db_backup/backup.sql

EXPORT_COMMAND='exec mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_PASSWORD"'

docker-compose exec mysql sh -c "$EXPORT_COMMAND" > $_file

if [[ $_os == "Darwin"* ]] ; then
  sed -i '.bak' 1,1d $_file
else
  sed -i 1,1d $_file # Removes the password warning from the file
fi
