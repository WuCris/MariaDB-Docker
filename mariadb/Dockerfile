FROM mariadb:11.2

COPY SQL/ /etc/mariadb-init/
COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d
RUN chmod -R ug+x /docker-entrypoint-initdb.d/