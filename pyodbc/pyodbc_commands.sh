docker run --rm --name pyodbc -v ~/sqoop_test:/jdbc -it laudio/pyodbc:latest

# Add the container to the network
docker network connect sqoop_net pyodbc

import pyodbc 
# Some other example server values are
# server = 'localhost\sqlexpress' # for a named instance
# server = 'myserver,port' # to specify an alternate port
server = 'mysql-db' 
database = 'test_db' 
username = 'sqoop' 
password = 'hadoop' 
cnxn = pyodbc.connect('DRIVER={MySQL ODBC 8.0 Driver};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)
cursor = cnxn.cursor()

cursor.execute("SELECT * FROM test_table")
row = cursor.fetchone()
while row:
    print (row)
    row = cursor.fetchone()