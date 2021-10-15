# Start the container
# **TODO: Adapt to run at project root
docker run --name=mysql-database -e MYSQL_ROOT_PASSWORD='root' -v $(pwd)/startup_script:/docker-entrypoint-initdb.d -d mysql/mysql-server:8.0

# Connect to docker network
docker network create mysql_db_net
docker network connect mysql_db_net mysql-database