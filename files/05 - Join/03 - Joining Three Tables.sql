/* We can join several tables together.
Each JOIN is performed only with two tables. */

-- Select products, categories and suppliers:
SELECT ProductName, UnitPrice, CategoryName, CompanyName
FROM Products P INNER JOIN Categories C
ON P.CategoryID = C.CategoryID
INNER JOIN Suppliers S
ON P.SupplierID = S.SupplierID