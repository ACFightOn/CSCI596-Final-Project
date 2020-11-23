# !/bin/bash
unzip ../package/mysql-connector-java-5.1.40.zip -d /usr/local/spark/jars
cd /usr/local/spark
./bin/pyspark --jars /usr/local/spark/jars/mysql-connector-java-5.1.40/mysql-connector-java-5.1.40-bin.jar --driver-class-path /usr/local/spark/jars/mysql-connector-java-5.1.40/mysql-connector-java-5.1.40-bin.jar