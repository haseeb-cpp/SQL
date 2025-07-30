use northwind;

select * from orders;

select * from customers;


select
c.customerid,
c.contactname,
o.orderid
from
customers as c
left join orders as o
on c.customerid = o.customerid;


select 
c.customerid,
c.contactname,
o.orderid
from 
customers as c
right join orders as o
on c.customerid = o.customerid;


select
* from products;

select * from orders_details;


select
p.productid,
p.productname,
od.orderid
from 
products as p
join orders_details as od
on p.productid = od.productid;


select * from products;


select * from suppliers;



select 
p.productid,
p.productname,
s.supplierid,
s.companyname
from products as p
left join suppliers as s
on p.supplierid = s.supplierid
union 
select
p.productid,
p.productname,
s.supplierid,
s.companyname
from products as p
right join suppliers as s
on p.supplierid = s.supplierid;



select 
* from
products
full outer join suppliers 
on p.supplierid = s.supplierid;



select * from product;

select * from color;


select
p.productname,
c.Color
from
product as p
cross join
color as c;


select
p.productname,
s.size,
c.color
from product as p
cross join
size as s
cross join
color as c;



select * from employees;



select
e.employeeid,
e.firstname,
e.lastname,
m.firstname,
m.lastname
from employees as e
left join employees as m
on e.reportsto = m.employeeid;



select
c.customerid,
c.contactname,
ifnull(o.orderid,0) as orderid
from
customers as c
left join orders as o
on c.customerid = o.customerid
where orderid is null;


select
c.customerid,
c.contactname,
coalesce(o.orderid,contactname,0) as orderid
from
customers as c
left join orders as o
on c.customerid = o.customerid
where orderid is null;


