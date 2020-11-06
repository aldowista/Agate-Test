create database segment_c_aldo;
use segment_c_aldo;

drop table data2017;
drop table data2018;


create table data2017(
Id int not null auto_increment,
month_ varchar(20) not null,
New_User int not null,
DAU int not null,
D1_Retention float not null,
D7_Retention float not null,
D30_Retention float not null,
Avg_Session int not null,
Playtime_day int not null,
Paying_user int not null,
Gross_Revenue float not null,
ARPPU float not null,
ARPDAU float not null,
Conversion_Rate float not null,
primary key(Id)
);

create table data2018(
Id int not null auto_increment,
month_ varchar(20) not null,
New_User int not null,
DAU int not null,
D1_Retention float not null,
D7_Retention float not null,
D30_Retention float not null,
Avg_Session int not null,
Playtime_day int not null,
Paying_user int not null,
Gross_Revenue float not null,
ARPPU float not null,
ARPDAU float not null,
Conversion_Rate float not null,
primary key(Id)
);


describe data2017;
describe data2018;

insert into data2017 values
(Null, 'Jan',160402,20389,35.92,7.95,2.24,5,15,700,1955.34,2.79,0.10,0.44)
;

select * from data2017;
select * from data2018;

create table user_acquisition(
Id int not null auto_increment,
Month_ varchar(20) not null,
user_acq_media varchar(50) not null,
result int not null,
primary key(Id)
);

select * from user_acquisition;