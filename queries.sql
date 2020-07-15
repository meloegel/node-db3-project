-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select c.CategoryName as Category, p.ProductName as Product
from product as p
join category as c
 on p.CategoryId = c.Id
order by categoryName
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [order].id, CompanyName from [order]
join shipper on shipper.id = shipper.Id
where orderdate < '2012-09-09' 
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select productname as ProductName, quantity as Quantity
from orderdetail as od
 join product as p
  on od.productId = p.id
   where orderid = 10251
   order by productname;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id as Id, c.contactname as ContactName, lastname as LastName 
from [order]as o
join customer as c
    on o.customerId = c.Id
join employee as e
     on o.employeeId = e.id;