## Data Manipulation and Table Alterations
/*
1. SQL NULL Values
2. SQL UPDATE Statement
3. SQL DELETE Statement
4. SQL ALTER TABLE
   - Add Column in Existing Table
   - Modify/Alter Column
   - Alter Table Drop Column
*/
create database companydb;

use companydb;

create table employees(
  EmployeeId int Primary Key,
  FirstName varchar(25),
  LastName VARCHAR(50),
  Email VARCHAR(100),
  HireDate DATE,
  Salary DECIMAL(10, 2)
);

## Insert some data in the table Employees

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate, Salary)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2020-01-15', 60000.00),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2019-03-22', 75000.00),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '2021-07-30', 50000.00),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '2018-11-12', 65000.00);

## Retireve the records
select * from Employees;

insert into Employees values(5,'Krish',Null,'krishnaik06@gmail.com',null,55000.00);

## Retrieve records which are having null vlaues
select * from Employees where LastName is null;

select * from Employees where LastName is null or HireDate is null;

#drop table Employees;

### MYsql Update Statement

## Updating Null Values
Update Employees
set LastName="Naik"
where EmployeeId=5;

select * from Employees;

# updating a single Record

update Employees
set Salary=Salary+10000
where EmployeeId=5;

## Delete query- Remove records from a table

select * from employees;
## Deleting a single record
delete from Employees
where EmployeeID=1;

## Deleting Multiple Records
Delete from Employees
where salary<66000;

select * from employees;

## Mysql Alter table
/*
The ALTER TABLE statement modifies the structure of an existing table.
 It can add, modify, or drop columns and constraints.
*/
## Add a Column to an Existing Table

alter table employees
add column phone_number varchar(25);

## Adding multiple columns

alter table employees
add column middle_name varchar(25),
add column date_of_birth Date;

select * from employees;

## modify/alter the column
## changing the datatype
alter table employees
modify column phone_number varchar(20);

alter table employees
modify column Salary int;
insert into Employees values(5,'Krish',Null,'krishnaik06@gmail.com',null,55000,'989373733','C','1989-09-09');

## Rename the column
alter table employees
change column middle_name middleName varchar(25);

select * from employees;

## alter table drop column

alter table employees
drop column date_of_birth;

ALTER TABLE employees
DROP COLUMN phone_number,
DROP COLUMN middleName;

























