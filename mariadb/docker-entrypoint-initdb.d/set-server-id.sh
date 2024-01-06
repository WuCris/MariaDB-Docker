#/bin/sh

set -e

if [ ! -z "${TASK_SLOT}" ]; then
    echo "Docker Swarm mode detected"
    MARIADB_SERVER_ID=$(($TASK_SLOT+1))
fi

if [ ! -z "${MARIADB_MASTER_HOST}" ]; then
    echo "Setting server_id to $MARIADB_SERVER_ID"
    echo '[mariadbd]' >> /etc/mysql/mariadb.conf.d/10-server_id.cnf
    echo "server_id=$MARIADB_SERVER_ID" >> /etc/mysql/mariadb.conf.d/10-server_id.cnf
fi