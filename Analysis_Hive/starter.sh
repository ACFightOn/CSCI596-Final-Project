service mysql start  # This command can be executed in any directory in Linux
cd /usr/local/hadoop  # start hadoop
./sbin/start-dfs.sh
jps


cd /usr/local/hive
./bin/hive   //start Hive
use dbtaobao; -- Using dbtaobao database
show tables; -- Displays all tables in the database.
show create table user_log; -- View user_ Various attributes of log table;

desc user_log;