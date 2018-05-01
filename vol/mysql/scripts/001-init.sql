create database jpetstore;
create user 'jpetstore'@'%' identified by 'jppwd';
grant all privileges on jpetstore.* to 'jpetstore'@'%';
flush privileges;

