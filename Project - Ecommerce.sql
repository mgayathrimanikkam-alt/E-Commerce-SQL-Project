--USE DATABASE

USE ECOMMERCE ;

--CREATE TABLES

--1.Categories
CREATE TABLE Categories(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(30)
);

--2. Customers
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50),
City VARCHAR(50)
)

--3. Products
CREATE TABLE Products(
ProductId INT PRIMARY KEY,
ProductName VARCHAR(40),
CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID),
Price DECIMAL(10,2)
);

--4. Orders
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
OrderDate DATE
);

--5. Order Details
CREATE TABLE OrderDetails(
OrderDetailID INT PRIMARY KEY,
OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
ProductId INT FOREIGN KEY REFERENCES Products(ProductID),
Quantity INT
);

--6.Payments
CREATE TABLE Payments(
PaymentID INT PRIMARY KEY ,
OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
PaymentMethod VARCHAR(20),
Amount DECIMAL(10,2),
PaymentDate DATE,
PaymentStatus  VARCHAR(20)
);

-- Insert Values 
-- Categories 10
INSERT INTO Categories VALUES 
(1, 'Electronics'), (2, 'Clothing'), (3, 'Books'),
(4, 'Home Appliances'), (5, 'Sports'), (6, 'Beauty'),
(7, 'Toys'), (8, 'Groceries'), (9, 'Furniture'), (10, 'Footwear');

-- Customers 10
INSERT INTO Customers VALUES
(101, 'Arun Kumar', 'Chennai'),
(102, 'Priya Sharma', 'Bangalore'),
(103, 'Rahul Verma', 'Mumbai'),
(104, 'Divya Nair', 'Kochi'),
(105, 'Karthik Raja', 'Chennai'),
(106, 'Sneha Patel', 'Delhi'),
(107, 'Vikram Singh', 'Jaipur'),
(108, 'Anitha Kumar', 'Coimbatore'),
(109, 'Suresh Menon', 'Hyderabad'),
(110, 'Deepa Rao', 'Bangalore');

-- Products 14
INSERT INTO Products VALUES
(1001, 'Laptop', 1, 55000.00),
(1002, 'T-Shirt', 2, 799.00),
(1003, 'SQL Book', 3, 499.00),
(1004, 'Mobile Phone', 1, 25000.00),
(1005, 'Washing Machine', 4, 28000.00),
(1006, 'Cricket Bat', 5, 1500.00),
(1007, 'Face Wash', 6, 299.00),
(1008, 'Lego Set', 7, 1999.00),
(1009, 'Rice Bag 5kg', 8, 650.00),
(1010, 'Office Chair', 9, 4500.00),
(1011, 'Running Shoes', 10, 2500.00),
(1012, 'Headphones', 1, 3000.00),
(1013, 'Jeans', 2, 1200.00),
(1014, 'Novel Book', 3, 350.00);

-- Orders 32
INSERT INTO Orders VALUES
(5001, 101, '2026-08-20'),
(5002, 102, '2026-08-21'),
(5003, 101, '2026-08-25'),
(5004, 103, '2026-09-01'),
(5005, 104, '2026-08-02'), (5006, 105, '2026-08-03'),
(5007, 106, '2026-08-04'), (5008, 107, '2026-08-05'),
(5009, 108, '2026-08-06'), (5010, 109, '2026-08-07'),
(5011, 110, '2026-08-08'), (5012, 101, '2026-08-09'),
(5013, 102, '2026-08-10'), (5014, 103, '2026-08-11'),
(5015, 104, '2026-08-12'), (5016, 105, '2026-08-13'),
(5017, 106, '2026-08-14'), (5018, 107, '2026-08-15'),
(5019, 108, '2026-08-16'), (5020, 109, '2026-08-17'),
(5021, 110, '2026-08-18'), (5022, 101, '2026-08-19'),
(5023, 102, '2026-08-22'), (5024, 103, '2026-08-23'),
(5025, 104, '2026-08-24'), (5026, 105, '2026-08-26'),
(5027, 106, '2026-08-27'), (5028, 107, '2026-08-28'),
(5029, 108, '2026-08-29'), (5030, 109, '2026-08-30'),
(5031, 110, '2026-09-02'), (5032, 101, '2026-09-03');

-- OrderDetails 33
INSERT INTO OrderDetails VALUES
(1, 5001, 1001, 1), (2, 5001, 1003, 2),
(3, 5002, 1002, 3), (4, 5003, 1004, 1), (5, 5004, 1002, 2),
(6, 5005, 1005, 1), (7, 5006, 1006, 7), (8, 5007, 1007, 3),
(9, 5008, 1008, 1), (10, 5009, 1009, 2), (11, 5010, 1010, 1),
(12, 5011, 1011, 1), (13, 5012, 1012, 6), (14, 5013, 1013, 1),
(15, 5014, 1014, 4), (16, 5015, 1001, 1), (17, 5016, 1002, 2),
(18, 5017, 1003, 1), (19, 5018, 1004, 1), (20, 5019, 1005, 1),
(21, 5020, 1006, 1), (22, 5021, 1007, 5), (23, 5022, 1008, 2),
(24, 5023, 1009, 3), (25, 5024, 1010, 1), (26, 5025, 1011, 2),
(27, 5026, 1012, 1), (28, 5027, 1013, 2), (29, 5028, 1014, 3),
(30, 5029, 1001, 1), (31, 5030, 1002, 4), (32, 5031, 1003, 2),
(33, 5032, 1004, 1), (34,5006,1014,1), (35, 5030,1007,2);

-- Payments 32
INSERT INTO Payments VALUES
(9001, 5001, 'UPI', 55998.00, '2026-08-20', 'Success'),
(9002, 5002, 'Credit Card', 2397.00, '2026-08-21', 'Success'),
(9003, 5003, 'Net Banking', 25000.00, '2026-08-25', 'Pending'),
(9004, 5004, 'UPI', 1598.00, '2026-09-01', 'Success'),
(9005, 5005, 'UPI', 28000.00, '2026-08-02', 'Success'),
(9006, 5006, 'Credit Card', 3000.00, '2026-08-03', 'Success'),
(9007, 5007, 'UPI', 897.00, '2026-08-04', 'Success'),
(9008, 5008, 'Net Banking', 1999.00, '2026-08-05', 'Failed'),
(9009, 5009, 'UPI', 1300.00, '2026-08-06', 'Success'),
(9010, 5010, 'Debit Card', 4500.00, '2026-08-07', 'Success'),
(9011, 5011, 'UPI', 2500.00, '2026-08-08', 'Pending'),
(9012, 5012, 'Credit Card', 6000.00, '2026-08-09', 'Success'),
(9013, 5013, 'UPI', 1200.00, '2026-08-10', 'Success'),
(9014, 5014, 'Net Banking', 1400.00, '2026-08-11', 'Success'),
(9015, 5015, 'UPI', 55000.00, '2026-08-12', 'Success'),
(9016, 5016, 'UPI', 1598.00, '2026-08-13', 'Failed'),
(9017, 5017, 'Credit Card', 499.00, '2026-08-14', 'Success'),
(9018, 5018, 'UPI', 25000.00, '2026-08-15', 'Success'),
(9019, 5019, 'Debit Card', 28000.00, '2026-08-16', 'Pending'),
(9020, 5020, 'UPI', 1500.00, '2026-08-17', 'Success'),
(9021, 5021, 'Net Banking', 1495.00, '2026-08-18', 'Success'),
(9022, 5022, 'UPI', 3998.00, '2026-08-19', 'Success'),
(9023, 5023, 'Credit Card', 1950.00, '2026-08-22', 'Success'),
(9024, 5024, 'UPI', 4500.00, '2026-08-23', 'Failed'),
(9025, 5025, 'UPI', 5000.00, '2026-08-24', 'Success'),
(9026, 5026, 'Debit Card', 3000.00, '2026-08-26', 'Success'),
(9027, 5027, 'UPI', 2400.00, '2026-08-27', 'Success'),
(9028, 5028, 'Net Banking', 1050.00, '2026-08-28', 'Pending'),
(9029, 5029, 'UPI', 55000.00, '2026-08-29', 'Success'),
(9030, 5030, 'Credit Card', 3196.00, '2026-08-30', 'Success'),
(9031, 5031, 'UPI', 998.00, '2026-09-02', 'Success'),
(9032, 5032, 'UPI', 25000.00, '2026-09-03', 'Success');

--Count Check - Ensures all Data is inserted correctly Before Practicing Joins.
-- 6 Tables Count in One Table
SELECT 'Categories'as T,COUNT(*)as C FROM Categories UNION ALL
SELECT 'Customers',COUNT(*)FROM Customers UNION ALL
SELECT 'Products',COUNT(*)FROM Products UNION ALL
SELECT 'Orders',COUNT(*) FROM Orders UNION ALL
SELECT 'OrderDetails',COUNT(*) FROM OrderDetails UNION ALL
SELECT 'Payments',COUNT(*) FROM Payments;

--Inner Join - Returns only the rows Where there is a match in both tables

--Q1. Show OrderID , CustomerName,OrderDate
SELECT o.OrderID,c.CustomerName,o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID=c.CustomerID;

--Q2.Show ProductName, categoryName,Price
SELECT p.ProductName,c.CategoryName,p.Price
FROM Products p
INNER JOIN Categories c ON p.CategoryID=c.CategoryID;

--Q3. Show OrderID,ProductName,Quantity
SELECT o.OrderID,p.ProductName,od.Quantity
FROM OrderDetails od
INNER JOIN Orders o ON od.OrderID=o.OrderID
INNER JOIN Products p ON od.ProductId=p.ProductId;

--LEFT JOIN + GROUP BY

-- Returns all the rows from the left table,and matched rows from right side table,if no match null is returned for right table Columns.

--Q4. Show CutomerName - Total Orders by Each Customers
SELECT c.CustomerName,COUNT(o.OrderID) as OrderCount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerName;

--Q5. Find Avg Price - Show Products  Costlier than Avg
SELECT ProductName
FROM Products
WHERE Price>(SELECT AVG(Price)FROM Products);

--Q6. List Customers who have placed more than 2 Orders,along with their order Count
SELECT c.CustomerName,COUNT(o.OrderID) as OrderCount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(o.OrderID)>2;

--Q7. Right Join
SELECT c.CustomerName ,o.OrderID
FROM Orders o
RIGHT JOIN Customers c ON o.CustomerID=c.CustomerID
WHERE o.OrderID IS NULL;

--Q8. Full Outer Join
SELECT c.CustomerName ,o.OrderID
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID=o.CustomerID;

--Q9. AND
SELECT ProductName,Price
FROM Products
WHERE  Price>500 AND Price<5000;

--Q10. OR
SELECT p.ProductName,c.CategoryName
FROM Products p
Join Categories c ON p.CategoryID=c.CategoryID
WHERE CategoryName='Electronics' OR CategoryName='Furniture';

--Q11. IN
SELECT *FROM Orders
WHERE CustomerID IN(101,105,110);

--Q12. BETWEEN -RANGE
SELECT ProductName ,Price
FROM Products 
WHERE Price BETWEEN 1000 AND 3000;

--SELF JOIN
--Q13. Find Pairs of Customers  Living in the Same City.
SELECT a.CustomerName AS Customer1,b.CustomerName AS Customer2,a.City
FROM Customers a
JOIN Customers b ON a.city=b.city AND a.CustomerID<b.CustomerID;

--Q14. Find Different Products in the Same Category

SELECT a.ProductName AS Product1,b.ProductName AS Product2
FROM Products a
JOIN Products b ON a.CategoryID=b.CategoryID AND a.ProductId<b.ProductId;

--UNION 
--Q15.Removes Duplicates
SELECT City FROM Customers
UNION
SELECT City FROM Customers;

--Q16. UNION ALL - Keeps Duplicates
SELECT City FROM Customers
UNION ALL
SELECT City FROM Customers;

--Q17. Customers with more than 1 order using HAVING
SELECT CustomerID,COUNT(OrderID)as TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID)>1;

--Q18. Top 3 Costliest Products using TOP + ORDERBY DESC
SELECT TOP 3 ProductName ,Price
FROM Products
ORDER BY Price DESC;

--Q19. Sum - Total Revenue
 SELECT  SUM( Amount) as TotalRevenue
 FROM Payments;

--Q20. GROUP BY With Payments
 SELECT PaymentMethod, COUNT(*) as TotalTransactions,SUM(Amount) as TotalAmount
 FROM Payments 
 GROUP BY PaymentMethod;







