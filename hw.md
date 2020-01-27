1. select O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E

select date from orders.OrderID as 'Order', orders.OrderDate as 'Date', customers.CompanyName as 'Company', employees.FirstName as 'Employee' BETWEEN 1996 and 1997 X

select date, O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E where O.OrderDate and date BETWEEN 1996 and 1997

select O.OrderDate, O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E where O.OrderDate and O.OrderDate BETWEEN 1996 and 1997-12-31 23:59:59

grrr (not working)

<https://stackoverflow.com/questions/5125076/sql-query-to-select-dates-between-two-dates>
