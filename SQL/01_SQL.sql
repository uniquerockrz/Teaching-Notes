--- Create Table ---

CREATE TABLE Persons (
	PersonID int, LastName varchar(255), FirstName varchar(255), Address varchar(255), City varchar(255)
);

--- Create Temporary Table ---

CREATE TEMPORARY TABLE temp_table ( 
	id INT,
	name VARCHAR(50) 
);

--- Select Statement ---

SELECT * FROM Customers;
SELECT CustomerName, City FROM Customers;

--- Select Distinct ---

SELECT DISTINCT City FROM Customers;

--- Basic filtering with where ---

SELECT * FROM Customers WHERE City='Berlin';

--- Where with IN ---

SELECT * FROM Customers WHERE City IN ('Berlin', 'London', 'Madrid');

--- Where with AND ---

SELECT * FROM Customers WHERE City='London' AND CustomerName LIKE '%north%';

--- Where with OR ---

SELECT * FROM Customers WHERE City='London' OR City='Madrid';

--- Where with NOT ---

SELECT * FROM Customers WHERE NOT City='London';

--- Order By ---

SELECT * FROM Customers ORDER BY Country;

--- Math ---

SELECT * FROM OrderDetails WHERE Quantity=(5+5);

--- Aggregate Functions ---

SELECT COUNT(*) FROM OrderDetails;
SELECT SUM(Quantity) FROM OrderDetails;
SELECT AVG(Quantity) FROM OrderDetails;
SELECT MIN(Quantity) FROM OrderDetails;
SELECT MAX(Quantity) FROM OrderDetails;

--- Group By ---

SELECT * FROM Customers GROUP BY Country;