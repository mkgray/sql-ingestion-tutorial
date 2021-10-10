# Start the container
docker run --name=mysql-db -d mysql/mysql-server:8.0

# Get the password
docker logs mysql1 2>&1 | grep GENERATED

#
# JT;M4TZA&33#%KeCn#gzcEm66670,@b#
#

# Interact
docker exec -it mysql-db mysql -uroot -p

# Change root password
ALTER USER 'root'@'localhost' IDENTIFIED BY 'TEST@1234';

# Feed data
CREATE DATABASE test_db;

USE test_db;

CREATE TABLE test_table(
    row_id INT AUTO_INCREMENT PRIMARY KEY,
    test_value VARCHAR(255) NOT NULL
);

INSERT INTO test_table(test_value) VALUES ('A');
INSERT INTO test_table(test_value) VALUES ('b');
INSERT INTO test_table(test_value) VALUES ('C');
INSERT INTO test_table(test_value) VALUES ('4');

SELECT * FROM test_table;

# Add Sqoop user with remote access priveleges
CREATE USER 'sqoop'@'localhost' IDENTIFIED BY 'hadoop';
GRANT ALL PRIVILEGES ON * . * to 'sqoop'@'localhost';
CREATE USER 'sqoop'@'%' IDENTIFIED BY 'hadoop';
GRANT ALL PRIVILEGES ON * . * TO 'sqoop'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;