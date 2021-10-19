# Create the data ingestion location
hdfs dfs -mkdir /user/sqoop

# Sqoop import example
MYSQL_HOST=mysql-server
MYSQL_USER=remote_connect_user
MYSQL_PASS=remote_connect_password
MYSQL_DB=test_db
MYSQL_TABLE=test_table
sqoop import --connect jdbc:mysql://$MYSQL_HOST/$MYSQL_DB --table $MYSQL_TABLE --username $MYSQL_USER --password $MYSQL_PASS --as-textfile --target-dir /user/sqoop/text -m 1

# Test the output
hdfs dfs -ls /user/sqoop/text

# Inspect the parquet file
hdfs dfs -cat /user/sqoop/text/part-m-00000