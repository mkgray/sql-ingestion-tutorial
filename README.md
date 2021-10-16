# sql-ingestion-tutorial
Tutorial to complement Towards Data Science article on ingesting SQL DBs

# TODOS:
- Need to create static locations to place files on local machine
- Add a makefile possibly???
/app/sql_ingestion_tutorial/db_initialization_scripts
/app/sql_ingestion_tutorial/jdbc_drivers

# Makefile
sudo mkdir /app
sudo mkdir /app/sql_ingestion_tutorial
sudo mkdir /app/sql_ingestion_tutorial/db_initialization_scripts
sudo mkdir /app/sql_ingestion_tutorial/jdbc_drivers
sudo cp DB/startup_script/init.sql /app/sql_ingestion_tutorial/db_initialization_scripts
sudo cp ~/sqoop_test/mysql-connector-java-8.0.26.jar /app/sql_ingestion_tutorial/jdbc_drivers