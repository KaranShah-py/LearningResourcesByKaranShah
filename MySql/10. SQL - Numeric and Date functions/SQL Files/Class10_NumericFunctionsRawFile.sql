-- Assigning the role for the account 
USE ROLE ACCOUNTADMIN;


-- Assigning the warehouse to the account 
USE WAREHOUSE COMPUTE_WH;

-- Creating a database named as SALES_DATABASE
CREATE DATABASE IF NOT EXISTS CLASS_6_DATABASE;

-- CREATING a schema for the SALES_DATABASE 
CREATE SCHEMA IF NOT EXISTS CLASS_6_SCHEMA;

-- USING THE DATABASE CREATED SALES_DATABASE 
USE DATABASE CLASS_6_DATABASE;

-- USING THE SCHEMA CREATED SALES_SCHEMA
USE SCHEMA CLASS_6_SCHEMA;

-- CREATING A TABLE FOR TODAYS CLASS
CREATE TABLE IF NOT EXISTS Sales_Transactions (
    Transaction_ID INT PRIMARY KEY,
    Customer_ID INT,
    Transaction_Date DATE,
    Amount_Spent DECIMAL(10, 2),
    Discount_Percentage DECIMAL(5, 2),
    Quantity_Purchased INT,
    Shipping_Cost DECIMAL(10, 2),
    Delivery_Date DATE,
    Return_Date DATE
);

-- INSERTING THE ROWS INTO INTO THE TABLE

INSERT 
INTO Sales_Transactions (
    Transaction_ID, 
    Customer_ID, 
    Transaction_Date, 
    Amount_Spent, 
    Discount_Percentage, 
    Quantity_Purchased, 
    Shipping_Cost, 
    Delivery_Date, 
    Return_Date)
VALUES
(1, 101, '2024-01-01', 250.00, 10.00, 2, 15.10, '2024-01-05', '2024-01-10'),
(2, 102, '2024-02-15', 0.00, 5.00, 5, 20.45, '2024-02-18', '2024-02-22'),
(3, 103, '2024-03-10', 750.00, 8.50, 0, 25.23, '2024-03-12', '2024-03-20'),
(4, 104, '2024-04-05', 1000.00, -12.00, 1, 18.90, '2024-04-10', '2024-04-15'),
(5, 105, '2024-05-20', 300.00, 9.75, 4, 10.00, '2024-05-25', '2024-06-01'),
(6, 106, '2024-06-01', 0.00, -7.00, 0, 22.00, '2024-06-05', NULL),
(7, 107, '2024-07-18', 850.00, 11.25, 7, 30.23, '2024-07-22', '2024-07-28'),
(8, 108, '2024-08-10', 400.00, -6.00, 5, 12.01, '2024-08-14', NULL),
(9, 109, '2024-09-25', 950.00, 15.00, 8, 28.10, '2024-09-30', '2024-10-05'),
(10, 110, '2024-10-12', 0.00, 10.50, 10, 35.00, '2024-10-18', '2024-10-25'),
(11, 111, '2024-11-01', 550.00, 7.25, 3, 18.00, '2024-11-03', NULL),
(12, 112, '2024-12-22', 1300.00, 9.50, 6, 40.00, '2024-12-27', '2025-01-05'),
(13, 113, '2025-01-05', 400.00, 5.50, 2, 15.00, '2025-01-08', NULL),
(14, 114, '2025-01-18', 800.00, 6.75, 7, 20.45, '2025-01-22', NULL),
(15, 115, '2025-02-15', 1000.00, 10.00, 0, 18.32, '2025-02-20', '2025-02-28'),
(16, 116, '2025-03-02', 0.00, 9.25, 9, 25.00, '2025-03-05', NULL),
(17, 117, '2025-04-10', 600.00, -5.00, 5, 20.00, '2025-04-15', '2025-04-20'),
(18, 118, '2025-05-21', 1500.00, 13.50, 11, 30.00, '2025-05-25', '2025-06-01'),
(19, 119, '2025-06-11', 450.00, 6.25, 3, 10.00, '2025-06-15', '2025-06-20'),
(20, 120, '2025-07-20', 700.00, 12.50, 4, 25.20, '2025-07-25', NULL),
(21, 121, '2025-08-01', 950.00, -7.75, 0, 22.00, '2025-08-06', NULL),
(22, 122, '2025-08-15', 1200.00, 5.50, 10, 30.00, '2025-08-18', NULL),
(23, 123, '2025-09-10', 0.00, 12.00, 5, 15.32, '2025-09-12', '2025-09-19'),
(24, 124, '2025-09-25', 850.00, 8.25, 7, 20.00, '2025-09-30', '2025-10-05'),
(25, 125, '2025-10-05', 1350.00, 10.00, 12, 35.00, '2025-10-10', '2025-10-15'),
(26, 126, '2025-10-20', 750.00, 6.75, 6, 18.45, '2025-10-25', '2025-11-01'),
(27, 127, '2025-11-01', 0.00, -9.00, 0, 25.00, '2025-11-05', '2025-11-10'),
(28, 128, '2025-11-15', 600.00, 11.50, 3, 12.00, '2025-11-18', NULL),
(29, 129, '2025-12-01', 950.00, 8.75, 7, 28.45, '2025-12-04', '2025-12-10'),
(30, 130, '2025-12-20', 1050.00, 6.25, 5, 20.00, '2025-12-25', '2026-01-02'),
(31, 131, '2026-01-05', 1250.00, -12.50, 11, 30.80, '2026-01-10', '2026-01-15'),
(32, 132, '2026-01-15', 550.00, 10.75, 4, 18.00, '2026-01-18', '2026-01-25'),
(33, 133, '2026-02-01', 1350.00, 5.50, 12, 35.55, '2026-02-05', NULL),
(34, 134, '2026-02-10', 0.00, 6.00, 5, 15.00, '2026-02-15', '2026-02-20'),
(35, 135, '2026-02-20', 1500.00, 9.25, 0, 40.00, '2026-02-25', '2026-03-02'),
(36, 136, '2026-03-05', 600.00, 11.00, 6, 22.00, '2026-03-10', '2026-03-15'),
(37, 137, '2026-03-18', 800.00, 7.50, 8, 18.00, '2026-03-22', '2026-03-28'),
(38, 138, '2026-04-05', 1200.00, 5.25, 9, 25.50, '2026-04-10', '2026-04-15'),
(39, 139, '2026-04-20', 400.00, 12.00, 2, 12.00, '2026-04-24', '2026-04-30'),
(40, 140, '2026-05-05', 0.00, 10.00, 6, 20.00, '2026-05-10', '2026-05-15'),
(41, 141, '2026-05-15', 1100.00, 8.00, 7, 20.00, '2026-05-20', '2026-05-28'),
(42, 142, '2026-06-01', 950.00, -9.50, 0, 25.00, '2026-06-05', '2026-06-10'),
(43, 143, '2026-06-10', 1200.00, 7.25, 8, 30.00, '2026-06-15', '2026-06-22'),
(44, 144, '2026-06-25', 500.00, 10.50, 4, 18.12, '2026-06-28', NULL),
(45, 145, '2026-07-05', 1300.00, 6.00, 10, 35.00, '2026-07-10', '2026-07-15'),
(46, 146, '2026-07-15', 700.00, 5.50, 6, 15.00, '2026-07-20', '2026-07-25'),
(47, 147, '2026-07-30', 1500.00, -9.75, 12, 40.01, '2026-08-03', '2026-08-08'),
(48, 148, '2026-08-10', 600.00, 12.25, 0, 12.00, '2026-08-14', '2026-08-18'),
(49, 149, '2026-08-20', 0.00, 8.75, 9, 25.03, '2026-08-24', NULL),
(50, 150, '2026-09-01', 500.00, 7.00, 5, 15.00, '2026-09-05', '2026-09-10'),
(51, 151, '2026-09-10', 850.00, 6.50, 6, 20.00, '2026-09-15', '2026-09-20'),
(52, 152, '2026-09-20', 1250.00, -5.25, 11, 28.04, '2026-09-25', '2026-10-01'),
(53, 153, '2026-10-01', 550.00, 10.00, 4, 18.00, '2026-10-05', NULL),
(54, 154, '2026-10-15', 1000.00, 6.75, 7, 22.00, '2026-10-20', '2026-10-25'),
(55, 155, '2026-10-25', 1500.00, 11.50, 10, 30.20, '2026-10-30', '2026-11-05'),
(56, 156, '2026-11-05', 0.00, 5.50, 9, 28.00, '2026-11-10', '2026-11-15'),
(57, 157, '2026-11-20', 750.00, 8.00, 8, 20.00, '2026-11-25', NULL),
(58, 158, '2026-12-01', 1200.00, 7.75, 0, 15.20, '2026-12-05', '2026-12-10'),
(59, 159, '2026-12-10', 600.00, 9.25, 6, 12.00, '2026-12-15', '2026-12-20'),
(60, 160, '2026-12-20', 1300.00, 5.00, 10, 35.00, '2026-12-25', '2027-01-01');


-- CHECKING THE INSERTED ROWS INTO THE TABLE
SELECT * FROM SALES_TRANSACTIONS;


-- STARTING WITH THE NUMERIC FUNCTIONS

/*
    Query 1: - Write a query to display the Customer_ID, Amount_Spent, and the absolute value of the 
    Discount_Percentage for all transactions in the Sales_Transactions table where the Discount_Percentage is negative. 
    Sort the results by Amount_Spent in descending order.
*/






/*
    Query 2: - Write a query to display the Transaction_ID, Amount_Spent, and the ceiling value of Shipping_Cost for 
    transactions where the Amount_Spent is greater than 1000. Sort the results by Transaction_Date in ascending order.
*/






/*
    Query 3: - Write a query to display the Customer_ID, Quantity_Purchased, and the floor value of shipping cost for transactions 
    where  exceeds 500. Sort the results by Quantity_Purchased in descending order.
*/




/*
    Query 4:
    Write a query to display the Customer_ID, Transaction_ID, and the remainder when Amount_Spent is divided by 7 for transactions 
    where Amount_Spent is greater than 300. Sort the results by Transaction_ID in ascending order.
*/





/*
    Query 5:
    Write a query to display the Transaction_ID, Amount_Spent, and the rounded Discount_Percentage to the nearest 
    whole number for all transactions where the discount is greater than 5. Sort the results by Discount_Percentage in descending order.
*/






/*
    Query 6: 
    Write a query to display the Customer_ID, Quantity_Purchased, and the result of dividing Amount_Spent 
    by Quantity_Purchased using the DIV0() function, which returns 0 when the divisor is zero. 
    Show transactions where the Quantity_Purchased is not 0. Sort the results by Customer_ID in ascending order.
*/





/*
    Query 7:
    Write a query to display the Transaction_ID, Amount_Spent, and the result of dividing Shipping_Cost by Quantity_Purchased 
    using the DIV0NULL() function, where the result will be NULL if the divisor is zero. 
    Show transactions where Quantity_Purchased is less than 3. Sort the results by Shipping_Cost in descending order.
*/





/*
    Query 8:
    Write a query to display the Transaction_ID, Amount_Spent, and the square root of Amount_Spent for transactions 
    where the Amount_Spent is greater than 1000. Sort the results by Amount_Spent in ascending order.
*/






/*
    Query 9:
    Write a query to display the Customer_ID, Quantity_Purchased, and the square of Discount_Percentage 
    for transactions where the Discount_Percentage is less than 10. 
    Sort the results by Discount_Percentage in ascending order.
*/





/*
    Query 10 - Bonus Query
    Write a query to perform the following operations on the Sales_Transactions table:
        1. Calculate the total amount spent for each transaction using Quantity_Purchased * Amount_Spent and round the result to 2 decimal places using ROUND().
        2. Calculate the square root of the total sales amount using SQRT() and round it up using CEIL().
        3. Calculate the remainder of Amount_Spent when divided by 500 using MOD() and round the result down using FLOOR().
        4. Only return transactions where the total amount spent is greater than 1,000.
        5. Sort the results by Amount_Spent in ascending order.
*/