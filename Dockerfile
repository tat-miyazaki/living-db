FROM registry.redhat.io/rhel8/mariadb-105

# needed for intialization
ENV MYSQL_USER=usr01
ENV MYSQL_PASSWORD=pwd01
ENV MYSQL_DATABASE=living

# Copy our sql scripts
COPY create.sql /tmp/

# Put our script to create db and tables in the init path
COPY run.sh /usr/share/container-scripts/mysql/init/

# Expose the correct port for MariaDB
EXPOSE 3306

# Start the server
CMD ["run-mysqld"]
