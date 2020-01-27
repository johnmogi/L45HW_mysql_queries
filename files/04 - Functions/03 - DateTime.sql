/* DateTime functions performs operations on dates and time values.
The constants parts are:
YYYY	Year
MM		Month
DD		Day
HH		Hour
MI		Minute
SS		Second
DW		Day of Week
WW		Week
DY		Day of Year
QQ		Quarter */

-- Get current date and time:
-- GETDATE() returns current date and time in the server local timezone, in a datetime format.
-- GETUTCDATE() returns current UTC date and time, in a datetime format.
-- SYSDATETIME() returns current date and time in the server local timezone, in a datetime2 format (more accurate).
-- SYSUTCDATETIME() returns current UTC date and time, in a datetime2 format (more accurate).
SELECT GETDATE(), GETUTCDATE(), SYSDATETIME(), SYSUTCDATETIME()

-- Get date parts: 
SELECT OrderDate, YEAR(OrderDate), MONTH(OrderDate), DAY(OrderDate) FROM Orders
SELECT OrderDate, DATEPART(HH, OrderDate), DATEPART(MI, OrderDate), DATEPART(SS, OrderDate) FROM Orders
SELECT GETDATE(), DATEPART(HH, GETDATE()), DATEPART(MI, GETDATE()), DATEPART(SS, GETDATE())

-- Get date name:
SELECT OrderDate, DATENAME(DW, OrderDate) FROM Orders -- Day of week name.
SELECT OrderDate, DATENAME(MM, OrderDate) FROM Orders -- Month name.
SELECT OrderDate, DATENAME(DD, OrderDate) FROM Orders -- No name, thus returns a number.

-- Get date difference: 
SELECT OrderDate, ShippedDate, DATEDIFF(HH, OrderDate, ShippedDate) FROM Orders -- Difference in hours.
SELECT OrderDate, ShippedDate, DATEDIFF(DD, OrderDate, ShippedDate) FROM Orders -- Difference in days.
SELECT OrderDate, ShippedDate, DATEDIFF(WW, OrderDate, ShippedDate) FROM Orders -- Difference in weeks.

-- Adding dates: 
SELECT OrderDate, DATEADD(DD, 10, OrderDate) FROM Orders
SELECT OrderDate, DATEADD(MM, 10, OrderDate) FROM Orders
SELECT OrderDate, DATEADD(YYYY, 10, OrderDate) FROM Orders