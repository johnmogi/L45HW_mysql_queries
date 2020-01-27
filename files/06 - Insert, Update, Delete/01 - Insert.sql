/* INSERT adds new rows to a table.
The INTO keyword is optional.
"inserted" is a system table holding the added values.
OUTPUT is a keyword which can output the added values into the screen or into another table. */

-- Insert a new row (identity column always skipped, non-null columns must be present, null columns can be absent):
INSERT INTO Shippers(CompanyName, Phone) VALUES('AA', '11')

-- Insert a new row without specifying column names (all non identity columns must be present):
INSERT INTO Shippers VALUES('BB', '22')

-- Insert several rows in one INSERT command:
INSERT INTO Shippers(CompanyName, Phone) VALUES('CC', '33'),('DD', '44'),('EE', '55')

-- Insert several rows in one INSERT command without specifying column names:
INSERT INTO Shippers VALUES('FF', '66'),('GG', '77'),('HH', '88')

-- Insert Null:
INSERT INTO Shippers VALUES('II', NULL)

-- Insert Default value:
INSERT INTO Shippers VALUES('JJ', DEFAULT)

-- Output the added values back to the screen:
INSERT INTO Shippers(CompanyName, Phone) OUTPUT inserted.CompanyName, inserted.Phone VALUES('KK','99')
INSERT INTO Shippers(CompanyName, Phone) OUTPUT inserted.* VALUES('KK','99')

-- Output the added values to some other table containing the exact added columns:
CREATE TABLE ShippersBackup(ShipperID int PRIMARY KEY, CompanyName nvarchar(40) NOT NULL, Phone nvarchar(24))
INSERT INTO Shippers(CompanyName, Phone) OUTPUT inserted.ShipperID, inserted.CompanyName, inserted.Phone INTO ShippersBackup VALUES('LL','00')
INSERT INTO Shippers(CompanyName, Phone) OUTPUT inserted.* INTO ShippersBackup VALUES('LL','00')

-- Insert one table to another, which must exist:
INSERT INTO ShippersBackup SELECT * FROM Shippers -- Insert all columns and all rows.
INSERT INTO ShippersBackup SELECT * FROM Shippers WHERE ShipperID <= 4 -- Insert all columns and some rows.