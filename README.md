# sql-ingestion-tutorial
Tutorial to complement Towards Data Science article on ingesting SQL DBs

# Commands to run
docker-compose up -d

docker exec -it sql-ingestion-tutorial-pyspark-client-1 pyspark --jars /jdbc/mysql-connector-java-8.0.26.jar
docker exec -it sql-ingestion-tutorial-python-client-1 python
docker exec -it sql-ingestion-tutorial-sqoop-client-1 /bin/bash

docker-compose down