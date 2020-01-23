-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select product.productname, category.categoryname
from product
join category
on product.categoryid = category.id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [order].id, shipper.companyname
from [order]
join [Shipper] on [order].shipvia = shipper.id
where [order].orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select productname, quantity
from [product]
join orderdetail on product.id = orderdetail.ProductId
where orderdetail.orderid = '10251'
order by productname;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [order].id, customer.companyname, employee.lastname
from [order]
join customer on [order].customerid = customer.id
join employee on [order].employeeid = employee.id;