-- To create a new database
CREATE Database Newdatabase

-- To create a table
CREATE TABLE nabotable(
  PersonID INT,
  FirstName VARCHAR(40) NOT NULL,
  LastName VARCHAR(40) NOT NULL,
  City VARCHAR(40),
  EmployeeID INT
  )

--Insert Data into table nabotable
INSERT INTO nabotable (PersonID, FirstName, LastName, CIty, EmployeeID)
VALUES (1, 'John', 'Waka', 'Nairobi', '122333')

--Print out the table nabotable
SELECT * FROM nabotable

-- You can create another table named peopledata
CREATE TABLE nabotable(
  PersonID INT,
  FirstName VARCHAR(40) NOT NULL,
  LastName VARCHAR(40) NOT NULL,
  City VARCHAR(40),
  EmployeeID INT
  )


-- Perform SQL for UNION, MINUS, INTERSECT
-- 1. UNION - to combine rows from two tables
-- 2. MINUS - Shows data that is one table and not in the other table
-- 3. INTERSECT - The common rows between tables will be printed

SELECT * FROM peopledata 
UNION
SELECT * FROM nabotable 

-- Insert data from one table to another table
INSERT INTO nabotable SELECT * FROM peopledata;

-- Delete data from table nabotable
DELETE FROM nabotable

-- Insert two columns from another table
INSERT INTO nabotable (FirstName, LastName) SELECT FirstName, LastName FROM peopledata;

#####################################################################
/*See the database attached. KCC from SQL course by Kevin Stratvert*/
https://www.youtube.com/watch?v=h0nxCDiD-zg&t=419s
#####################################################################

--1. Select distinct customer names from a database KCC with table dbo.Customers
SELECT distinct CustomerName AS [Customer Name] FROM KCC.dbo.Customers

--2. Select all columns from table dbo.Customers
SELECT * FROM KCC.dbo.Customers

--3. Select a sample of the data
SELECT top(3) * FROM KCC.dbo.Customers

--4. Select customers from state of washington
SELECT *
FROM KCC.dbo.Customers 
WHERE State = 'WA'

--5. Select customers not from state of washington, Use <> or !=
SELECT *
FROM KCC.dbo.Customers 
WHERE State != 'WA' 

--6. Select customers from two states.Use OR
SELECT *
FROM KCC.dbo.Customers 
WHERE State = 'WA' or State = 'AL'

--7. Select customers IN and NOT IN, 
SELECT *
FROM KCC.dbo.Customers 
WHERE State NOT IN ('WA', 'AL', 'NY')


--8. Select a customer in a specific country//Use AND and Use brackets
SELECT *
FROM KCC.dbo.Customers 
WHERE CustomerName = 'Tres Delicious' AND (Country = 'United States' OR Country = 'France')

--9. Select a customer in a specific country//Use AND and use brackets
SELECT *
FROM KCC.dbo.Customers 
WHERE CustomerName = 'Tres Delicious' AND (Country = 'France' OR Country = 'United States')


--10. Select customers starting with specific letter//Use LIKE and %
SELECT *
FROM KCC.dbo.Customers 
WHERE CustomerName LIKE 'A%'

--11. Select customers starting with specific letter//Use NOT LIKE and %
SELECT *
FROM KCC.dbo.Customers 
WHERE CustomerName NOT LIKE 'A%'
