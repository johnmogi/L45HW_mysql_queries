/* DELETE removes one or more rows from a table. */

-- Delete specific row: 
DELETE FROM Shippers WHERE ShipperID = 4

-- Delete several rows: 
DELETE FROM Shippers WHERE Phone IS NULL

-- Delete all rows: 
DELETE FROM Shippers

-- Delete all rows without logging it (much faster) + init the auto-number from scratch:
TRUNCATE TABLE Shippers

-- Output deleted values to the screen:
DELETE FROM Shippers OUTPUT deleted.ShipperID, deleted.CompanyName, deleted.Phone WHERE ShipperID = 5
DELETE FROM Shippers OUTPUT deleted.* WHERE ShipperID = 6

-- Output deleted values to some other table:
CREATE TABLE ShippersBackup(ShipperID int PRIMARY KEY, CompanyName nvarchar(40) NOT NULL, Phone nvarchar(24))
DELETE FROM Shippers OUTPUT deleted.ShipperID, deleted.CompanyName, deleted.Phone INTO ShippersBackup WHERE ShipperID = 9
DELETE FROM Shippers OUTPUT deleted.* INTO ShippersBackup WHERE ShipperID = 10