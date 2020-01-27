/* Scalar functions performs an operation on a column and from each cell - returns a single value.
Math functions performs math calculations. */

-- Round upward:
SELECT ShipName, Freight, CEILING(Freight) FROM Orders

-- Round downward:
SELECT ShipName, Freight, FLOOR(Freight) FROM Orders

-- Round up or down according the number:
SELECT ShipName, Freight, ROUND(Freight, 1) FROM Orders

-- Random number:
SELECT RAND() -- 0.0 - 1.0
SELECT RAND(123) -- 123 = Seed, i.e. sequence of random numbers will always be the same.
SELECT RAND(123) -- 123 = Seed, i.e. sequence of random numbers will always be the same.