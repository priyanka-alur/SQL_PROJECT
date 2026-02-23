CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

INSERT INTO Customers VALUES
(1, 'Amit', 'Bangalore', '2023-01-10'),
(2, 'Priya', 'Hyderabad', '2023-02-15'),
(3, 'Rahul', 'Chennai', '2023-03-05'),
(4, 'Sneha', 'Bangalore', '2023-04-12'),
(5, 'Arjun', 'Mumbai', '2023-05-20');

select * from Customers;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(101, 1, '2023-06-01', 2500),
(102, 2, '2023-06-05', 1800),
(103, 1, '2023-06-10', 3200),
(104, 3, '2023-06-15', 1500),
(105, 4, '2023-06-20', 2700),
(106, 5, '2023-06-25', 4000);


select * from Orders;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(201, 'Laptop', 'Electronics', 50000),
(202, 'Phone', 'Electronics', 20000),
(203, 'Table', 'Furniture', 8000),
(204, 'Chair', 'Furniture', 3000);

select * from Customers;

select * from Orders;

select * from  Products;

ALTER TABLE Orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES Customers(customer_id);

INSERT INTO Orders VALUES
(107, 5, '2023-06-30', 2000);



-- 1.Show all customers.
select * from customers;

-- 2.Show only customers from Bangalore.
select * from customers
where city = 'Bangalore';


-- 3.Show all orders where total_amount > 2000.
select * from Orders
where total_amount > 2000;

-- 4.Show all products from Furniture category.
select * from Products
where category = 'Furniture'

-- 5.Show all orders sorted by total_amount (highest first).
select * from Orders
order by total_amount DESC;

-- 6.Show top 3 highest orders.
Select Top 3 * from Orders
order by total_amount DESC;

-- 7.Show customers whose name starts with ‘A’.
select * from Customers
where customer_name Like 'A%'

-- 8.Find total sales per customer_id.
select * from Orders
select customer_id , sum(total_amount) as total_sales
from orders
group by customer_id;


-- 9.Find number of orders per customer.
select * from Customers
select * from Orders

select customer_id , count(*) as no_of_orders
from Orders
group by customer_id


-- 10.Find average order value.
select customer_id, avg(total_amount) as avg_order_value
from Orders
group by customer_id


-- 11.Show customers whose total sales > 4000.

select customer_id , sum(total_amount) as total_sales
from Orders
group by customer_id
having sum(total_amount) > 4000;


-- 12.Show customers who placed more than 1 order.
select customer_id,count(*) as no_of_orders
from Orders
group by customer_id
having count(*) > 1; 


-- 13.Show: Customer name + Order date + Amount.
select c.customer_name,
	   o.order_date,
	   o.total_amount
from orders o
inner join customers c
on c.customer_id = o.customer_id

-- 14.Show: Customer name + City + Total amount.
select c.customer_name,
	   c.city,
	   o.total_amount
from orders o
inner join customers c
on c.customer_id = o.customer_id

SELECT 
    c.customer_name,
    c.city,
    SUM(o.total_amount) AS total_amount
FROM Orders o
INNER JOIN Customers c
ON c.customer_id = o.customer_id
GROUP BY c.customer_name, c.city;

--15️ Show: Only Bangalore customers and their orders.
select c.customer_name,
	   c.city,
	   o.order_id
from orders o
inner join customers c
on c.customer_id = o.customer_id
where c.city = 'Bangalore'

-- 16️. Show: Customer name + Total spending (sum of orders).
select c.customer_name,
	   o.total_amount
from orders o
inner join customers c
on c.customer_id = o.customer_id

SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spending
FROM Orders o
INNER JOIN Customers c
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- 17.Find the highest spending customer.
select TOP 1 c.customer_name,
	   o.total_amount
from orders o
inner join customers c
on c.customer_id = o.customer_id
order by total_amount DESC

SELECT TOP 1
    c.customer_name,
    SUM(o.total_amount) AS total_spending
FROM Orders o
INNER JOIN Customers c
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spending DESC;

-- 18.️Find the lowest order amount with customer name.
select TOP 1 c.customer_name,
	   o.total_amount
from orders o
inner join customers c
on c.customer_id = o.customer_id
order by total_amount ASC

-- 19.Show category-wise product count.

select category, count(*) as product_count
from Products
group by category

--Subqueries
-- Show orders which are bigger than average order
SELECT AVG(total_amount)FROM Orders;

SELECT *
FROM Orders
WHERE total_amount >
(
    SELECT AVG(total_amount)
    FROM Orders
);