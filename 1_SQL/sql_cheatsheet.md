Concepts - 
1. Database - collection of data organized in a way to accelerate data retrieval, transformation ,..
2. Schema - 
3. Table - 


Sample data:
<create a sample table of car vinNo, make, model, WD, color, year, price, purchase_date>


SQL Queries - 
1. Create a database
create database carLibrary;
2. Create a Schema
create schema carLogs;

3. Create a Table
	Without constraints
		create table carPurchaseLog 
		columns (vinNo int, make varchar, model varchar, WD int, color varchar, year date, price float, purchase_date date);



	With constraints (ie, primary key, foreign key, default, value range, etc)
		create table carPurchaseLog 
		columns (vinNo int primarykey, make varchar, model varchar, WD int, color varchar, year date, price float, purchase_date date);


4. View data in table
	without constraints (ie, view all data)
		select * from carPurchaseLog;
	with constraints:
		select * from carPurchaseLog where purchase_date > 2022;




5. insert value into table
insert into carPurchaseLog 
		columns (vinNo, make , model , WD , color , year , purchase_date )
		values (123, "mazda" , "cx3" , 2 , "white" , 2018 , 30015.50, 2019-03-01 ), 
				(545, "kia" , "niro Lx" , 2 , "grey" , 22000.75, 2019 , 2023-03-01);

6. drop table
drop table carPurchaseLog;
7. drop database carLibrary



Best Practices:
1. Naming convention - use meaningful and consistent naming
2. Avoid reserved keywords in any naming
