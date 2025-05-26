
# 📘 SQL Cheatsheet — Beginner to Advanced

## 🧠 Core Concepts

1. **Database** – A collection of data organized to accelerate retrieval, transformation, and analytics.
2. **Schema** – Logical grouping of database objects (tables, views, indexes).
3. **Table** – Organized data structure of rows and columns.
4. **Constraints** – Rules to maintain data integrity (e.g., primary key, not null).

---

## ✅ Best Practices

- Use meaningful and consistent naming conventions.
- Avoid reserved SQL keywords in names.
- Prefer snake_case or camelCase consistently.

---

## 🧪 Sample Table

```sql
CREATE TABLE carPurchaseLog (
    purchase_date DATETIME,
    transaction_id INT PRIMARY KEY,
    price FLOAT,
    agent_name VARCHAR(100)
);
```

| purchase_date       | transaction_id | price     | agent_name |
|---------------------|----------------|-----------|------------|
| 2019-03-01 10:00:00 | 123            | 30015.50  | Jane       |
| 2019-03-01 10:30:00 | 234            | 25006.00  | Doe        |

---

## 🔹 Basic SQL Queries

```sql
-- Create & Use DB
CREATE DATABASE carLibrary;
USE carLibrary;

-- Create Schema
CREATE SCHEMA carLogs;

-- Create Table
CREATE TABLE carPurchaseLog (
    purchase_date DATE,
    transaction_id INT PRIMARY KEY,
    price FLOAT,
    agent_name VARCHAR(100)
);

-- View Data
SELECT * FROM carPurchaseLog;
SELECT * FROM carPurchaseLog WHERE purchase_date > '2022-01-01';

-- Insert Data
INSERT INTO carPurchaseLog VALUES
('2019-03-01 10:00:00', 123, 30015.50, 'Jane'),
('2019-03-01 10:30:00', 234, 25006.00, 'Doe');

-- Drop Table and DB
DROP TABLE carPurchaseLog;
DROP DATABASE carLibrary;
```

---

## 🔧 Data Manipulation

```sql
-- NULL Check
SELECT * FROM carPurchaseLog WHERE price IS NOT NULL;

-- Update
UPDATE carPurchaseLog SET agent_name = 'Mini' WHERE transaction_id = 123;

-- Delete
DELETE FROM carPurchaseLog WHERE agent_name = 'Mini';

-- Alter Table
ALTER TABLE carPurchaseLog 
ADD customer_phone BIGINT,
ADD customer_email VARCHAR(100);

ALTER TABLE carPurchaseLog
MODIFY customer_email VARCHAR(150);

ALTER TABLE carPurchaseLog
CHANGE customer_email cust_email VARCHAR(150);

ALTER TABLE carPurchaseLog
DROP COLUMN cust_email,
DROP COLUMN customer_phone;
```

---

## 📌 Constraints

```sql
-- Primary Key
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Foreign Key
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Composite Key
CREATE TABLE attendance (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);

-- Unique
CREATE TABLE agents (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

-- NOT NULL
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Auto Increment
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount FLOAT
);

-- Check
CREATE TABLE employees (
    id INT PRIMARY KEY,
    dob DATE CHECK (dob > '1900-01-01')
);

-- Default
CREATE TABLE salaries (
    id INT PRIMARY KEY,
    amount FLOAT DEFAULT 10000
);
```

---

## 🧩 Index vs Views

```sql
-- Index
CREATE INDEX idx_name ON agents(email);
SELECT * FROM agents WHERE email = 'test@example.com';
ALTER TABLE agents DROP INDEX idx_name;

-- View
CREATE VIEW agent_summary AS
SELECT agent_name, COUNT(*) AS total_sales
FROM carPurchaseLog
GROUP BY agent_name;
```

> **Index**: Speeds up retrieval, slower writes  
> **View**: Virtual table from query result, read-only abstraction

---

## 🔗 Joins

```sql
-- Inner Join
SELECT * FROM users u
INNER JOIN orders o ON u.id = o.user_id;

-- Left Join
SELECT * FROM users u
LEFT JOIN orders o ON u.id = o.user_id;

-- Right Join
SELECT * FROM users u
RIGHT JOIN orders o ON u.id = o.user_id;

-- Full Join (if supported)
SELECT * FROM users u
FULL OUTER JOIN orders o ON u.id = o.user_id;

-- Cross Join
SELECT * FROM users u
CROSS JOIN orders o;

-- Natural Join
SELECT * FROM users
NATURAL JOIN orders;
```

---

## 📏 Aggregation & Grouping

```sql
-- Aggregates
SELECT COUNT(*) FROM carPurchaseLog;
SELECT AVG(price) FROM carPurchaseLog;
SELECT MIN(price), MAX(price) FROM carPurchaseLog;

-- Group By
SELECT agent_name, COUNT(*) AS total_sales, SUM(price) AS total_revenue
FROM carPurchaseLog
GROUP BY agent_name;

-- Having
SELECT agent_name, COUNT(*) AS total_sales
FROM carPurchaseLog
GROUP BY agent_name
HAVING total_sales > 1;
```

---

## 📆 Date & Time

```sql
-- Extract parts
SELECT YEAR(purchase_date), MONTH(purchase_date) FROM carPurchaseLog;

-- Format
SELECT DATE_FORMAT(purchase_date, '%Y-%m') AS formatted_date FROM carPurchaseLog;

-- Filter range
SELECT * FROM carPurchaseLog
WHERE purchase_date BETWEEN '2019-01-01' AND '2020-01-01';

-- Convert timezone (MySQL)
SELECT CONVERT_TZ(purchase_date, 'UTC', 'US/Pacific') FROM carPurchaseLog;
```

---

## 🎯 Distinct & Order

```sql
-- Distinct
SELECT DISTINCT agent_name FROM carPurchaseLog;

-- Order By
SELECT * FROM carPurchaseLog ORDER BY price DESC;
```

---

## 🪟 Window Functions

```sql
-- Rank by sales
SELECT agent_name, COUNT(*) AS sales,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM carPurchaseLog
GROUP BY agent_name;

-- Running total
SELECT purchase_date, price,
       SUM(price) OVER (ORDER BY purchase_date) AS running_total
FROM carPurchaseLog;

-- Row number
SELECT *, ROW_NUMBER() OVER (PARTITION BY agent_name ORDER BY purchase_date) AS row_num
FROM carPurchaseLog;
```
