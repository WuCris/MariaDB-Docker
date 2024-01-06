#!/bin/sh

set -e

if [ -z "${MARIADB_MASTER_HOST}" ]; then 

    for SQL in $(ls -1 /etc/mariadb-init/)
    do
        mariadb -u root -p$MARIADB_ROOT_PASSWORD < "/etc/mariadb-init/$SQL"
    done

fi