CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'idhiba'@'localhost';
SET PASSWORD FOR 'idhiba'@'localhost' = PASSWORD('password');
GRANT ALL PRIVILEGES ON wordpress.* TO 'idhiba'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON wordpress.* to 'idhiba'@'%' IDENTIFIED BY 'password';

FLUSH PRIVILEGES;

CREATE USER 'gilou'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'gilou'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER 'gilou'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'gilou'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
flush privileges;