## MYSQL Constraints
/*
Def: SQL constraints are used to specify rules for the data in a table. Constraints are 
     used to limit the type of data that can go into a table. This ensures the accuracy 
     and reliability of the data in the table.
     If there is any violation between the constraint and the data action,
     the action is aborted.
Types of Constraints in MySQL
1. PRIMARY KEY
2. FOREIGN KEY
3. UNIQUE
4. NOT NULL
5. CHECK
6. DEFAULT
7. INDEX
8. Candidate Key
*/
use librarydb;

## primary Key: Uniquely identifies each record in a table.
create table authors(
 AuthorId int primary key,
 Firstname varchar(25),
 Lastname Varchar(25),
 email varchar(25)
);
insert into authors values
(2,"Krish1","Naik1","exmaple2@gmail.com");

desc authors;

select * from authors;

select * from authors where AuthorId=1;

#drop table authors;

## Foreign Key: Establishes a relationship between two tables, ensuring referential integrity.

create table books(
BookId int Primary key,
Title varchar(25) not null,
AuthorId int,
publicationyear int check (publicationyear>0),
Foreign key (AuthorId) references Authors(AuthorId)
);
desc books;
select * from authors;
insert into books values(1,"Harry Potter",1,2022);
insert into books values(2,"Harry Potter",2,2022);
insert into books values(3,"Harry Potter",null,2022);

select * from books;

## not null,unique
create table student(
id int not null,
first_name varchar(25),
last_name varchar(25) not null,
age int
);

desc student;

alter table student 
modify age int not null;

## add primary key as a constraint
alter table student
modify id int not null primary key;
## drop a primary key constraint

alter table student
drop primary key;

## Unique

create table person(
id int auto_increment not null Primary key,
first_name varchar(25) not null,
last_name varchar(25) Unique,
age int not null
);

desc person;
insert into person values(2,"Krish1","Naik",32);

select * from person;







