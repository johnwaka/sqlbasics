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