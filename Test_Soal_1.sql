create database test_aldo;
use test_aldo;

drop table authors;
drop table books;

create table authors (
Id int not null auto_increment,
author_name varchar(50) null,
book_name varchar(50) null,
primary key(Id)
);

create table books (
Id int not null auto_increment,
book_name varchar(50) null,
sold_copies int null,
primary key(Id)
);


show tables;
describe authors;
describe books;

insert into authors values
(null,'Tono', 'buku_1'),
(null,'Tono', 'buku_2'),
(null,'Budi', 'buku_3'),
(null,'Dini', 'buku_4'),
(null,'Ranti', 'buku_4'),
(null,'Dini', 'buku_2'),
(null,'Andi', 'buku_4'),
(null,'Andi', 'buku_5')
;

insert into books values
(null,'buku_1',4000),
(null,'buku_2',3000),
(null,'buku_3',1500),
(null,'buku_4',2500),
(null,'buku_5',500)
;


select authors.author_name, 
sum(books.sold_copies) as total_copies, 
count(authors.author_name) as variasi_buku
from authors
join books
on books.book_name = authors.book_name
group by authors.author_name
order by total_copies
limit 3;




