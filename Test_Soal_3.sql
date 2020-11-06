create database test_aldo_soal_3;
use test_aldo_soal_3;

drop table employees;
drop table salaries;

create table employees(
department_name varchar(50) not null,
employee_id int not null,
employee_name varchar(50) not null
);

create table salaries(
salary int not null,
employee_id int not null,
employee_name varchar(50) not null
);

describe salaries;
describe employees;

insert into employees values
('Sales',123,'John Doe'),
('Sales', 211, 'Jane Smith'),
('HR', 556, 'Billy Bob'),
('Sales', 711, 'Robert Hayek'),
('Marketing', 235, 'Edward Jorgson'),
('Marketing', 236, 'Cristine Packard')
;
insert into salaries values
(500, 123, 'John Doe'),
(600, 211, 'Jane Smith'),
(1000, 556, 'Billy Bob'),
(400, 711, 'Robert Hayek'),
(1200, 235, 'Edward Jorgson'),
(200, 236, 'Christine Packard')
;

select * from salaries
join employees
on  salaries.employee_id = employees.employee_id;

select employees.department_name, avg(salary) AS avg_salaries
from salaries
join employees
on  salaries.employee_id = employees.employee_id
group by department_name
having avg_salaries > 500;

