select count(distinct user_id) from user_log where action='2';-- Query how many users have purchased goods in double 11
select count(distinct user_id) from user_log; -- Query how many users click on the store on double 11
select count(*) from user_log where gender=0; --Check the quantity of goods purchased by women on double 11
select count(*) from user_log where gender=1; --Check the number of goods purchased by men on double 11
select user_id from user_log where action='2' group by user_id having count(action='2')>5; -- Query the user ID who has purchased goods on the website more than 5 times in a day