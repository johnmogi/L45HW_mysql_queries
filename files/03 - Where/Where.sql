/* WHERE is a condition for the rows to select. */

-- Comparison operators (>, <, >=, <=, !>, !<, =, !=, <>):
SELECT EmployeeID, FirstName, LastName FROM Employees WHERE EmployeeID >= 6

-- Logic operators (AND, OR, NOT):
SELECT EmployeeID, FirstName, LastName FROM Employees WHERE EmployeeID >= 6 AND EmployeeID <= 8
SELECT EmployeeID, FirstName, LastName FROM Employees WHERE EmployeeID = 6 OR EmployeeID = 8
SELECT EmployeeID, FirstName, LastName FROM Employees WHERE NOT EmployeeID = 6

-- BETWEEN:
SELECT EmployeeID, FirstName, LastName FROM Employees WHERE EmployeeID BETWEEN 6 AND 8
SELECT EmployeeID, FirstName, LastName FROM Employees WHERE NOT EmployeeID BETWEEN 6 AND 8

-- IN:
SELECT FirstName, LastName, City FROM Employees WHERE City IN ('London', 'Seattle', 'Tacoma')
SELECT FirstName, LastName, City FROM Employees WHERE City NOT IN ('London', 'Seattle', 'Tacoma')

-- LIKE:
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE 'an%' -- % = 0 or more characters.
SELECT FirstName, LastName FROM Employees WHERE FirstName COLLATE Latin1_General_BIN LIKE 'an%' -- Same, but case sensitive.
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE 'r_b%' -- _ = single character.
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE '[amn]%' -- [...] = single character in the brackets.
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE '[a-n]%' -- [...-...] = single character in the range.
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE '[^amn]%' -- [^...-...] = single character not in the brackets.
SELECT FirstName, LastName FROM Employees WHERE FirstName LIKE '[^a-n]%' -- [...-...] = single character not in the range.

-- IS NULL / IS NOT NULL (NULL can't be compared to 0 or ""):
SELECT FirstName, LastName, Region FROM Employees WHERE Region IS NULL
SELECT FirstName, LastName, Region FROM Employees WHERE Region IS NOT NULL