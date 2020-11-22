select brand_id from user_log limit 10; -- Check the product brands of the top 10 transaction logs
select month,day,cat_id from user_log limit 20;
select ul.at, ul.ci  from (select action as at, cat_id as ci from user_log) as ul limit 20;

