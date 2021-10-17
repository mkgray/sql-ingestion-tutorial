import pyodbc
server = 'mysql-server'
database = 'test_db' 
username = 'remote_connect_user' 
password = 'remote_connect_password' 
cnxn = pyodbc.connect('DRIVER={MySQL ODBC 8.0 Driver};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+ password)
cursor = cnxn.cursor()

cursor.execute("SELECT * FROM test_table")
row = cursor.fetchone()
while row:
    print (row)
    row = cursor.fetchone()