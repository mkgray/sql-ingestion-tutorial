# Imports
import pyodbc

# Set configuration for DB
MYSQL_HOST="mysql-server"
MYSQL_USER="remote_connect_user"
MYSQL_PASS="remote_connect_password"
MYSQL_DB="test_db"
MYSQL_TABLE="test_table"

# Establish connection to MySQL DB
cnxn = pyodbc.connect(f"DRIVER={{MySQL ODBC 8.0 Driver}};SERVER={MYSQL_HOST};DATABASE={MYSQL_DB};UID={MYSQL_USER};PWD={MYSQL_PASS}")
cursor = cnxn.cursor()

# Run query to select * and output results
cursor.execute(f"SELECT * FROM {MYSQL_TABLE}")
row = cursor.fetchone()
while row:
    print (row)
    row = cursor.fetchone()