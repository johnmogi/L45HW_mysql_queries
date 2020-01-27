1. select * from products
2. SELECT UnitPrice, ProductName from products
3. SELECT UnitPrice, ProductName, UnitsInStock from products where UnitPrice > 20
4. SELECT UnitPrice, ProductName, UnitsInStock from products where UnitPrice BETWEEN 10 AND 20
5. SELECT UnitPrice, ProductName from products where UnitPrice BETWEEN 10 and 50 ORDER by UnitPrice DESC
6. SELECT upper(ProductName), floor(UnitPrice) from products where UnitPrice between 10 and 20
7. SELECT orders.orderId, orders.orderDate, customers.companyName from orders, customers<br>

8. SELECT O.orderId, O.orderDate, C.companyName FROM orders AS O JOIN customers AS C

9. SELECT orders.orderId, orders.orderDate, customers.companyName as 'Customer' from orders, customers

10. SELECT O.orderId, O.orderDate, C.companyName as 'Customer' FROM orders AS O JOIN customers AS C

11. insert INTO products(ProductName, UnitPrice, UnitsInStock,UnitsOnOrder) VALUES ('apple', 100, 24,43)

12. update products set UnitPrice = '500', UnitsInStock = '1' where ProductID = '78'

13. update products set UnitPrice = UnitPrice*1.1 where SupplierID =1

14. DELETE from products where ProductID= '78'
