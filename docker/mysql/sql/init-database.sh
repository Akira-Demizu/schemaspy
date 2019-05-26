#!/usr/bin/env bash
#wait for the MySQL Server to come up
#sleep 90s

#run the setup script to create the DB and the schema in the DB

readonly USER="docker"
readonly PASSWORD="docker"
readonly DB="test_database"
cd /docker-entrypoint-initdb.d
for file in `\find . -name '*.sql'`; do
 mysql -u ${USER} -p${PASSWORD} ${DB} < "/docker-entrypoint-initdb.d/${file}"
done
