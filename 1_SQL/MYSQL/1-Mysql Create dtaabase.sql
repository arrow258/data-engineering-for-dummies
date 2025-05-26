## Agenda
/*
1.1. Introduction to Databases
Definition: A database is an organized collection of data, typically stored 
and accessed electronically from a computer system.
Purpose: Databases store information in a structured way, 
allowing efficient data retrieval, management, and manipulation.
*/
/*
1. MySQL Create Databases
2. MySQL Create Table without constraints
3. MySQL Insert Data Into Table
4. MySQL Drop Table
5. MySQL DROP Databases
6. Hands On excercises- Creating and Dropping Databases and Tables
*/

## create the database
create database LibraryDb;

create database ecommercedb;

/*Best Practices:
1. Naming Conventions: Use meaningful and consistent names (e.g., LibraryDB, ECommerceDB).
2. Avoid Reserved Keywords: Ensure database names do not clash with MySQL reserved keywords.
3. Use Lowercase Letters: While MySQL is case-insensitive on Windows, 
it is case-sensitive on Unix-based systems. Consistency avoids confusion.*/

## MYSQL Create table without constraints

use librarydb;

create table Books(
  BookID int,
  Title varchar(25),
  Author varchar(25),
  Genre varchar(25),
  PublicationYear INT
);

show databases;

select * from Books;

## Insert data into table

insert into books(BookID,Title,Author,Genre,PublicationYear) 
values 
(1,"Twilight","KN","Romantic",2020),
(2,"Harry Potter","ALAS","scifi",2018);

select * from Books;

## Drop the table
drop table books;

## drop the database ecommercedb
drop database ecommercedb;















