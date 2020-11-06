create database test_aldo_soal4;
use test_aldo_soal4;

drop table person;
drop table deposito;

create table person (
person_id int not null auto_increment,
nama varchar(50) not null,
email varchar(320) not null,
primary key(person_id)
);

create table deposito(
deposito_id int not null auto_increment,
amount int not null,
person_id int not null,
primary key(deposito_id)
);

ALTER TABLE deposito AUTO_INCREMENT=1000;

insert into person values
(null, 'Stella', 'stella@gmail.com'),
(null, 'Yudhit', 'Yudhit_123@yahoo.com'),
(null, 'Christian','chris@yahoo.com')
;

insert into deposito values
(null, 10000000, 1),
(null, 15000000, 3),
(null, 11000000, 2),
(null, 20000000, 1),
(null, 25000000, 2),
(null, 10000000, 3),
(null, 12000000, 2)
;

select deposito_id as DEPOSITO_ID, 
amount as AMOUNT, 
person.person_id as PERSON_ID, 
person.nama as PERSON_NAME from deposito 
join person on person.person_id = deposito.person_id
order by person.person_id
;