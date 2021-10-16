docker run --rm --name jupyter -v ~/sqoop_test:/jdbc -p 8888:8888 -d jupyter/pyspark-notebook

# Load pyspark with the jar file
pyspark --jars /jdbc/mysql-connector-java-8.0.26.jar

# PySpark code
df = spark.read.format('jdbc').options(
    url = "jdbc:mysql://mysql-database/test_db",
    driver = "com.mysql.jdbc.Driver",
    dbtable = "test_table",
    user = "remote_connect_user",
    password = "remote_connect_password"
).load()

df.show()