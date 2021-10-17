df = spark.read.format('jdbc').options(
    url = "jdbc:mysql://mysql-server/test_db",
    driver = "com.mysql.cj.jdbc.Driver",
    dbtable = "test_table",
    user = "remote_connect_user",
    password = "remote_connect_password"
).load()

df.show()