# Create the data ingestion location
hdfs dfs -mkdir /user/sqoop

# Sqoop import example
MYSQL_HOST=mysql-db
MYSQL_USER=sqoop
MYSQL_PASS=hadoop
MYSQL_DB=test_db
MYSQL_TABLE=test_table
sqoop import --connect jdbc:mysql://$MYSQL_HOST/$MYSQL_DB --table $MYSQL_TABLE --username $MYSQL_USER --password $MYSQL_PASS --as-textfile --target-dir /user/sqoop/text -m 1

# Test the output
hdfs dfs -ls /user/sqoop/text

# Inspect the parquet file
hdfs dfs -cat /user/sqoop/text/part-m-00000