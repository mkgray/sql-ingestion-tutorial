# Set configuration for DB
MYSQL_HOST="mysql-server"
MYSQL_USER="remote_connect_user"
MYSQL_PASS="remote_connect_password"
MYSQL_DB="test_db"
MYSQL_TABLE="test_table"

# Establish connection for MySQL DB using credentials provided
df = spark.read.format('jdbc').options(
    url = f"jdbc:mysql://{MYSQL_HOST}/{MYSQL_DB}",
    driver = "com.mysql.cj.jdbc.Driver",
    dbtable = MYSQL_TABLE,
    user = MYSQL_USER,
    password = MYSQL_PASS
).load()

# Display results for validating successful connection
df.show()