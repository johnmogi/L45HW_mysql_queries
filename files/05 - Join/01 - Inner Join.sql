/* INNER JOIN is a join in which the values in the columns being joined are compared using a comparison operator.
The word INNER is optional. JOIN defaults to INNER JOIN.
NULL values won't be included. */

-- Select products with their matching categories.
-- Product without a matching category or category without products won't be selected:
SELECT ProductName, UnitPrice, CategoryName
FROM Products INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID

-- Same, but with table aliases (lesser code):
SELECT ProductName, UnitPrice, CategoryName
FROM Products AS P INNER JOIN Categories AS C
ON P.CategoryID = C.CategoryID