# sql-ingestion-tutorial
Tutorial to complement Towards Data Science article on ingesting SQL DBs

# Add the JDBC Driver to a folder in this project called "jdbc_drivers"
- Navigate to https://dev.mysql.com/downloads/connector/j/
- Download "Platform Independent" connector
- Extract files
- Move the .jar file to a directory in this folder called "jdbc_drivers"

# Commands to run
docker-compose up -d

docker exec -it sql-ingestion-tutorial-pyspark-client-1 pyspark --jars /jdbc/mysql-connector-java-8.0.26.jar
docker exec -it sql-ingestion-tutorial-python-client-1 python
docker exec -it sql-ingestion-tutorial-sqoop-client-1 /bin/bash

docker-compose down