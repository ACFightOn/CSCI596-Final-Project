select count(distinct user_id) from user_log where action='2';
select count(*) from user_log where action='2' and brand_id=2661;