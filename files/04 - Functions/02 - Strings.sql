/* String functions perform string operations. */

-- Convert to upper case:
SELECT ShipName, UPPER(ShipName) FROM Orders

-- Convert to lower case:
SELECT ShipName, LOWER(ShipName) FROM Orders

-- Take left part:
SELECT ShipName, LEFT(ShipName, 5) FROM Orders

-- Take right part:
SELECT ShipName, RIGHT(ShipName, 5) FROM Orders

-- Trim spaces:
SELECT ShipName, LTRIM(ShipName) FROM Orders
SELECT ShipName, RTRIM(ShipName) FROM Orders
SELECT ShipName, LTRIM(RTRIM(ShipName)) FROM Orders

-- String Length:
SELECT ShipName, LEN(ShipName) FROM Orders

-- Replace string:
SELECT ShipName, REPLACE(ShipName, ' ', '---') FROM Orders

-- Take sub string:
SELECT ShipName, SUBSTRING(ShipName, 3, 10) FROM Orders -- start (from 1), count 

-- Get string first location (starting from 1):
SELECT ShipName, CHARINDEX('an', ShipName) FROM Orders
SELECT ShipName, CHARINDEX('an', ShipName, 5) FROM Orders -- Start looking from index 10

-- Get a new GUID: 
SELECT NEWID()