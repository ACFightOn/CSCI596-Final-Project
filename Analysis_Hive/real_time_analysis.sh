create table scan(brand_id INT,scan INT) COMMENT 'This is the search of bigdatataobao' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE; -- Create a new data table for storage
insert overwrite table scan select brand_id,count(action) from user_log where action='2' group by brand_id;--Import data
select * from scan; -- Show results