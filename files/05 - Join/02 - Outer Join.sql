/* OUTER JOIN return all rows from at least one of the tables mentioned.
The word OUTER is optional. */

-- Select all products and only their matching categories:
SELECT ProductName, UnitPrice, CategoryName
FROM Products AS P LEFT OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID

-- Select all categories and only products having them:
SELECT ProductName, UnitPrice, CategoryName
FROM Products AS P RIGHT OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID

-- Select all products and all categories:
SELECT ProductName, UnitPrice, CategoryName
FROM Products AS P FULL OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID