# sql-ingestion-tutorial
Tutorial files to complement Towards Data Science article on ingesting SQL DBs.

### Prerequisites
* Docker (and basic knowledge of)
* JDBC Driver (see below for steps to acquire)

### JDBC Driver Setup
* Create a folder in this directory
* Navigate to https://dev.mysql.com/downloads/connector/j/
* Download "Platform Independent" connector
* Extract files
* Move the .jar file to a directory in this folder called "jdbc_drivers"
  * .jar file will be named "mysql-connector-java-8.0.26.jar" where 8.0.26 may be be changed to reflect the version downloaded

### Starting the Docker Environment
Command `docker-compose up -d` will start the Docker environment. `-d` option specifies the detached parameter and will have the environment run in the background after being launched.

### Interacting with the Client Containers
The command `docker exec -it sql-ingestion-tutorial-pyspark-client-1 pyspark --jars /jdbc/*` will start an interactive session with the container used for establishing a connection via PySpark. `--jars` option is used to feed all .jar files (specifically the JDBC Connector) to PySpark.

The command `docker exec -it sql-ingestion-tutorial-pyspark-client-1 spark-shell --jars /jdbc/*` will start an interactive session with the container used for establishing a connection via Scala Spark. `--jars` option is used to feed all .jar files (specifically the JDBC Connector) to PySpark.

The command `docker exec -it sql-ingestion-tutorial-python-client-1 python` will start an interactive session with the container used for establishing a connection via Python.

The command `docker exec -it sql-ingestion-tutorial-sqoop-client-1 /bin/bash` will start an interactive session with the container used for establishing a connection via Sqoop.

### Stopping the Docker Environment
Command `docker-compose down` will stop the Docker environment.