// Set configuration for DB
val MYSQL_HOST="mysql-server";
val MYSQL_USER="remote_connect_user";
val MYSQL_PASS="remote_connect_password";
val MYSQL_DB="test_db";
val MYSQL_TABLE="test_table";

// Establish connection for MySQL DB using credentials provided
val df = (spark.read
  .format("jdbc")
  .option("url", s"jdbc:mysql://$MYSQL_HOST/$MYSQL_DB")
  .option("driver", "com.mysql.cj.jdbc.Driver")
  .option("dbtable", MYSQL_TABLE)
  .option("user", MYSQL_USER)
  .option("password", MYSQL_PASS)
  .load())

// Display results for validating successful connection
df.show()