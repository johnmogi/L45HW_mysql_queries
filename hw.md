1. select O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E

select date from orders.OrderID as 'Order', orders.OrderDate as 'Date', customers.CompanyName as 'Company', employees.FirstName as 'Employee' BETWEEN 1996 and 1997 X

select date, O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E where O.OrderDate and date BETWEEN 1996 and 1997

select O.OrderDate, O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E where O.OrderDate and O.OrderDate BETWEEN 1996 and 1997-12-31 23:59:59

<!-- select Date, orders.OrderID from orders where orders.OrderDate and Date between '2011/02/25' and '2011/02/27' --> <https://stackoverflow.com/questions/5125076/sql-query-to-select-dates-between-two-dates>

grrr (not working)

select orders.OrderID from orders where orders.OrderDate between '2011/02/25' and '2011/02/27'

{working!}

solution:

select O.OrderDate, O.OrderID as 'Order', O.OrderDate as 'Date', C.CompanyName as 'Company', E.FirstName as 'Employee' FROM orders AS O, customers AS C, employees AS E where O.OrderDate between '1997/01/01' and '1997/12/31'

insert into suppliers (CompanyName,ContactName,Country,City,phone,fax) values ('1Digital','John Mogi','Israel','Pardes-Hanna','050-9382456', '050-9382456')
