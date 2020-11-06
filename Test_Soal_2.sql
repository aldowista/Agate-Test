create database test_aldo_soal_2;
use test_aldo_soal_2;

create table event_log_agate(
user_id int not null,
event_date_time int not null
);

insert into event_log_agate values
(7494212, 1535308430),
(7494212, 1535308433),
(1475185,1535308444),
(6946725,1535308475),
(6946725,1535308476),
(6946725,1535308477)
;

##Group data by user id
select user_id, count(event_date_time) as total_image 
from event_log_agate 
group by user_id 
order by total_image;

select * from (select user_id, count(event_date_time) as total_image from event_log_agate 
group by user_id) as total_image
where total_image <5 and total_image >1
order by total_image; ## For example, because data is not longer from 2000 and 4000.

## Answer for the real question
### We assume that that longer than 4000..

select * from (select user_id, count(event_date_time) as total_image from event_log_agate 
group by user_id) as total_image
where total_image <4000 and total_image >2000
order by total_image;

select count(*) as total_user from (select user_id, count(event_date_time) as total_image from event_log_agate 
group by user_id) as total_image
where total_image <4000 and total_image >2000
order by total_image;