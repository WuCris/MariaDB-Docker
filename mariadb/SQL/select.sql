CREATE USER IF NOT EXISTS 'maxscale'@'%' IDENTIFIED BY 'maxscale_pw';
GRANT SELECT ON mysql.user TO 'maxscale'@'%';
GRANT SELECT ON mysql.db TO 'maxscale'@'%';
GRANT SELECT ON mysql.tables_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.columns_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.procs_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.proxies_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.roles_mapping TO 'maxscale'@'%';
GRANT SHOW DATABASES ON *.* TO 'maxscale'@'%';

--for monitor--
GRANT REPLICATION CLIENT ON *.* TO 'maxscale'@'%';
GRANT REPLICA MONITOR ON *.* TO 'maxscale'@'%';
GRANT FILE ON *.* TO 'maxscale'@'%';
GRANT CONNECTION ADMIN ON *.* TO 'maxscale'@'%';