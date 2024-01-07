# MariaDB Master/Replica with MaxScale and Grafana



```
 microk8s kubectl create secret generic mariadb-passwords \
      --from-literal=MARIADB_ROOT_PASSWORD=1rcznVKxW9qeZkLZ7T4EtF6uj \
      --from-literal=MARIADB_PASSWORD=caL1HwWTTzBQBcMjkiwixLko9 \
      --from-literal=MARIADB_REPLICATION_PASSWORD=hc0IrwGbU5lwKnqzjTEYZ4BDu \
      --from-literal=MARIADB_ROOT_REPLICA_PASSWORD=vTR2FXuHOBZrHLezmJX2lxW3Q
```