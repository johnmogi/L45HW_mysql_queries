/* SELECT returns a row-set from one or more tables. */

USE Northwind -- Using Northwind from now on.

-- Select all columns:
SELECT * FROM Employees

-- Select specific columns:
SELECT FirstName, LastName, Country, City FROM Employees

-- Give aliases to columns (the AS keyword is optional):
SELECT EmployeeID AS Code, FirstName AS [First Name], LastName AS 'Last Name', PostalCode AS "Zip Code" FROM Employees

-- Concatenate columns:
SELECT FirstName + ' ' + LastName AS [Full Name] FROM Employees

-- Use arithmetic operations:
SELECT ProductName, UnitPrice, UnitPrice * 1.155 AS [Price Including VAT] FROM Products

-- Select distinct values:
SELECT DISTINCT City FROM Employees
SELECT DISTINCT City, Title FROM Employees -- Only combined distinct values will be selected.

-- Sort:
SELECT FirstName, LastName, Title FROM Employees ORDER BY FirstName -- The default is ASC.
SELECT FirstName, LastName, Title FROM Employees ORDER BY FirstName ASC -- The default is ASC.
SELECT FirstName, LastName, Title FROM Employees ORDER BY FirstName DESC -- Descending order.
SELECT FirstName, LastName, Title FROM Employees ORDER BY Title, FirstName -- Secondary sorting.
SELECT FirstName, LastName, Title FROM Employees ORDER BY Title DESC, FirstName -- Secondary sorting with different ordering.
SELECT FirstName, LastName, Title FROM Employees ORDER BY 2 -- Sorting by the second column (LastName).
SELECT FirstName + ' ' + LastName AS [Full Name] FROM Employees ORDER BY [Full Name] -- Sorting by alias.

-- Select top results:
SELECT TOP (5) * FROM Employees -- First 5 employees in the table.
SELECT TOP (5) FirstName, LastName FROM Employees -- Same, with specific columns
SELECT TOP (30) Percent * FROM Employees -- Top 30% in the table.
SELECT TOP (30) Percent FirstName, LastName FROM Employees -- Same, with specific columns.
SELECT TOP (2) WITH TIES * FROM Employees ORDER BY City -- All rows with City equals to the top two cities.
SELECT TOP (2) WITH TIES FirstName, LastName, City FROM Employees ORDER BY City -- Same, with specific columns.

-- Offset and Fetch
SELECT EmployeeID, FirstName, LastName FROM Employees ORDER BY EmployeeID OFFSET 4 ROWS -- Offset four rows, get all the rest.
SELECT EmployeeID, FirstName, LastName FROM Employees ORDER BY EmployeeID OFFSET 4 ROWS FETCH NEXT 3 ROWS ONLY -- Offset four rows, get next three.

-- Select values into a new table (which must not exist).
-- The new table will be created with the data, without design properties such as primary key, constraints etc:
SELECT * INTO EmployeesBackup from Employees
SELECT EmployeeID, FirstName, LastName INTO EmployeesBackup FROM Employees
SELECT EmployeeID, FirstName, LastName INTO EmployeesBackup FROM Employees WHERE EmployeeID <= 4