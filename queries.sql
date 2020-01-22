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

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.


select product.id, productName, category.CategoryName
from product
join category on product.categoryId = category.id
where product.id = 23;

select supplier.companyname, product.ProductName, category.categoryname
from product
join supplier on supplier.id = product.SupplierId
join category on product.categoryid = category.id
where product.id = 5;