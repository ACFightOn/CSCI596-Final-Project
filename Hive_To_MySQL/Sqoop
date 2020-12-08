# import data from Hive to MySQL
1.log in MySQL
mysql –u root –p

2.create database
mysql:
show databases;
create database dbtaobao;
use dbtaobao

check the encoding
show variables like "char%"

3.create database
CREATE TABLE `dbtaobao`.`user_log` (`user_id` varchar(20),`item_id` varchar(20),`cat_id` varchar(20),`merchant_id` varchar(20),`brand_id` varchar(20), `month` varchar(6),`day` varchar(6),`action` varchar(6),`age_range` varchar(6),`gender` varchar(6),`province` varchar(10)) ENGINE=InnoDB DEFAULT CHARSET=utf8;

4.import data
cd /usr/local/sqoop
bin/sqoop export --connect jdbc:mysql://localhost:3306/dbtaobao --username root --password root --table user_log --export-dir '/user/hive/warehouse/dbtaobao.db/inner_user_log' --fields-terminated-by ',';

./bin/sqoop export ##copy data from hive to mysql
–connect jdbc:mysql://localhost:3306/dbtaobao
–username root #mysql username
–password root #password
–table user_log #name of the table
–export-dir ‘/user/hive/warehouse/dbtaobao.db/user_log ‘ #export file from hive
–fields-terminated-by ‘,’ #split of Hive

