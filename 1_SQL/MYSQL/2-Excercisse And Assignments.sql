/*Create database SchoolDb,
table-Students{studentid,firstname,lastname}
*/
#Create Course tables{courseId, Coursename,Department}

create database schooldb;
use schooldb;

create table students(
   StudentId int,
   Firstname varchar(25),
   Lastname varchar(25),
   Email varchar(25),
   EnrollmentDate date
);

## create the course table
create table courses(
   CourseId int,
   CourseName varchar(25),
   Department varchar(25),
   Credits int
);

## Insert sample data into tables

Insert into students(StudentId,Firstname,Lastname,Email,EnrollmentDate)
values
(1,'Krish','Naik','support@krish.com','2024-09-09'),
(2,'Krish1','Naik1','support1@krish.com','2024-09-10');

## check the records from students

select * from students;

## insert some data in the courses table

insert into Courses values 
(101,'Introduction to Stats','Statistics',3),
(102,'Data Science','Data Analytics',3);

select * from courses;

show tables;

drop table courses;
drop table students;

drop database schooldb;

/*
Assignment
Create Your Own Database and Tables:

Task: Create a database named CompanyDB and 
tables Employees and Departments without any constraints.

*/









