FROM rockylinux:9.3

WORKDIR /tmp/
RUN dnf install wget -y \
  && wget https://r.mariadb.com/downloads/mariadb_repo_setup \
  && chmod ug+x mariadb_repo_setup \
  && ./mariadb_repo_setup --skip-check-installed \
  && dnf remove wget -y \
  && rm mariadb_repo_setup

WORKDIR /
RUN dnf install util-linux-user maxscale -y
COPY maxscale.cnf /etc/maxscale.cnf
RUN chown maxscale:maxscale /etc/maxscale.cnf \
  && chsh -s /bin/bash maxscale

USER maxscale

CMD ["maxscale", "--nodaemon", "--log=stdout"]