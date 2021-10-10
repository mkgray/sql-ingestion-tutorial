# Run the Sqoop instance
docker run --name=sqoopy -v ~/sqoop_test:/jdbc -it dvoros/sqoop:latest

# connect to network
docker network connect sqoop_net sqoopy
docker network connect sqoop_net mysql-db
docker network connect sqoop_net jupyter

# Make the drop location
docker exec sqoopy hdfs dfs -mkdir /user/sqoop

# Sqoop import example
MYSQL_HOST=mysql-db
MYSQL_USER=sqoop
MYSQL_PASS=hadoop
MYSQL_DB=test_db
MYSQL_TABLE=test_table
sqoop import --connect jdbc:mysql://$MYSQL_HOST/$MYSQL_DB --table $MYSQL_TABLE --username $MYSQL_USER --password $MYSQL_PASS --as-textfile --target-dir /user/sqoop/text -m 1

# Test the output
docker exec sqoopy hdfs dfs -ls /user/sqoop/text

# Inspect the parquet file
docker exec sqoopy hdfs dfs -cat /user/sqoop/text/part-m-00000