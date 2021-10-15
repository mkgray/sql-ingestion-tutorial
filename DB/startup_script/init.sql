# MySQL Commands
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

# Add user with remote access priveleges
CREATE USER 'remote_connect_user'@'%' IDENTIFIED BY 'remote_connect_password';
GRANT ALL PRIVILEGES ON * . * TO 'remote_connect_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;