## Data Manipulation Excercises and Practise

use companydb;

create table customer_info(
id int auto_increment Primary key,
first_name varchar(25),
last_name varchar(25),
salary integer
);

# insert into customer_info table
insert into customer_info(first_name,last_name,salary)
values("Krish","Naik",50000);

select * from customer_info; 

insert into customer_info(first_name,last_name,salary)
values
("Darius","N",50000),
("Mahendra","B",50000),
("Ankit","Sharma",Null);

## get the records of the customers who salary is missing
select first_name,last_name from customer_info where salary is null;
select * from customer_info where salary is null;

select first_name,last_name from customer_info where salary is not null;
select * from customer_info where salary is not null;

## sql update statemet to replace null values
update customer_info set salary=60000
where id=4;

## delete
delete from customer_info
where id=3;

select * from customer_info;

insert into customer_info(first_name,last_name,salary)
values
(4,"Darius","N",50000);

## Alter Mysql
## Add column
alter table customer_info
add column dob Date;

## add multiple columns
alter table customer_info
add column email varchar(25),
add column address varchar(25);


## see the schema of the table
desc customer_info;

## modify the column
alter table customer_info
modify address varchar(30);
## drop a column
alter table customer_info drop column email;







