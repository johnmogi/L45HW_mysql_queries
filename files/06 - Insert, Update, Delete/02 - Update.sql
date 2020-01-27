/* UPDATE perform changes on an existing row.
"deleted" is a system table holding the old values.
"inserted" is a system table holding the new values. */

-- Update a specific row: 
UPDATE Shippers SET CompanyName = 'Zim', Phone = '04-1234567' WHERE ShipperID = 4

-- Update several rows: 
UPDATE Shippers SET Phone = NULL WHERE ShipperID BETWEEN 5 and 7

-- Output the old and/or new values to the screen:
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT deleted.ShipperID, deleted.CompanyName, deleted.Phone WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT deleted.* WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT inserted.ShipperID, inserted.CompanyName, inserted.Phone WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT inserted.* WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT deleted.ShipperID, deleted.CompanyName, deleted.Phone, inserted.ShipperID, inserted.CompanyName, inserted.Phone  WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT deleted.*, inserted.* WHERE ShipperID = 8

-- Output the old and/or new values to some other table:
CREATE TABLE ShippersBackup(ShipperID int PRIMARY KEY, CompanyName nvarchar(40) NOT NULL, Phone nvarchar(24))
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT deleted.ShipperID, deleted.CompanyName, deleted.Phone INTO ShippersBackup WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT deleted.* INTO ShippersBackup WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT inserted.ShipperID, inserted.CompanyName, inserted.Phone INTO ShippersBackup WHERE ShipperID = 8
UPDATE Shippers SET CompanyName = 'Fedex', Phone = '03-1234567' OUTPUT inserted.* INTO ShippersBackup WHERE ShipperID = 8