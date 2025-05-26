/*Question
You are tasked with creating a simple customers table for an online store. This table will store basic information about each customer. Create the customers table with the following columns:

customer_id: Integer, should automatically increment with each new record.
first_name: Variable character string up to 50 characters, cannot be null.
last_name: Variable character string up to 50 characters, cannot be null.
email: Variable character string up to 100 characters.
phone_number: Variable character string up to 15 characters.
address: Variable character string up to 255 characters.
city: Variable character string up to 100 characters.
postal_code: Variable character string up to 10 characters.
country: Variable character string up to 50 characters.
Note: For this assignment, do not include any constraints such 
as primary keys, foreign keys, or unique constraints.
*/

/*
Assignment 2: Inserting Data into the customers Table
Question
Now that the customers table has been created, populate it with sample data. Insert the following five customer records into the customers table:

Customer 1:

First Name: John
Last Name: Doe
Email: john.doe@example.com
Phone Number: 123-456-7890
Address: 123 Elm Street
City: Springfield
Postal Code: 62704
Country: USA
Customer 2:

First Name: Jane
Last Name: Smith
Email: jane.smith@example.com
Phone Number: 098-765-4321
Address: 456 Oak Avenue
City: Metropolis
Postal Code: 62960
Country: USA
Customer 3:

First Name: Emily
Last Name: Davis
Email: emily.davis@example.com
Phone Number: 555-123-4567
Address: 789 Pine Road
City: Gotham
Postal Code: 10001
Country: USA
Customer 4:

First Name: Michael
Last Name: Brown
Email: michael.brown@example.com
Phone Number: 444-555-6666
Address: 321 Maple Lane
City: Star City
Postal Code: 60614
Country: USA
Customer 5:

First Name: Sarah
Last Name: Wilson
Email: sarah.wilson@example.com
Phone Number: 777-888-9999
Address: 654 Cedar Boulevard
City: Central City
Postal Code: 94105
Country: USA
*/
/*
Try some update,delete and alter queries to modify the columns and drop a column
and insert some null values
*/


## Solution
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(100),
    postal_code VARCHAR(10),
    country VARCHAR(50)
);

INSERT INTO customers (
    first_name,
    last_name,
    email,
    phone_number,
    address,
    city,
    postal_code,
    country
) VALUES
    ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street', 'Springfield', '62704', 'USA'),
    ('Jane', 'Smith', 'jane.smith@example.com', '098-765-4321', '456 Oak Avenue', 'Metropolis', '62960', 'USA'),
    ('Emily', 'Davis', 'emily.davis@example.com', '555-123-4567', '789 Pine Road', 'Gotham', '10001', 'USA'),
    ('Michael', 'Brown', 'michael.brown@example.com', '444-555-6666', '321 Maple Lane', 'Star City', '60614', 'USA'),
    ('Sarah', 'Wilson', 'sarah.wilson@example.com', '777-888-9999', '654 Cedar Boulevard', 'Central City', '94105', 'USA');


