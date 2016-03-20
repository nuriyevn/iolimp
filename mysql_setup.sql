CREATE USER 'ejudge'@'%' IDENTIFIED BY '*******';
GRANT USAGE ON *.* TO 'ejudge'@'%' IDENTIFIED BY '*******' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
CREATE DATABASE IF NOT EXISTS `ejudge`;
GRANT ALL PRIVILEGES ON `ejudge`.* TO 'ejudge'@'%';

//Check that mysql database password in judges folder is the same as in all queries
// Probably ejudge-setup works incorrectly
GRANT ALL PRIVILEGES ON *.* TO 'ejudge'@'localhost';
SET PASSWORD FOR 'ejudge'@'localhost' = PASSWORD('*******');


// Useful commands

USE mysql
DESCRIBE mysql.user
GRANT USAGE ON *.* TO 'ejudge'@'%' IDENTIFIED BY '*******' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
SELECT user, host, password FROM mysql.user WHERE 1;


