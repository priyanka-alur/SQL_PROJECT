# SQL_PROJECT_1
E-Commerce_Sales_Analysis
## 📌 Project Overview
This project focuses on analyzing e-commerce business data using SQL to understand customer behavior, order patterns, and product performance. 
A relational database was designed using Customers, Orders, and Products tables to generate meaningful business insights.
## 🎯 Objectives
- Analyze customer purchase behavior  
- Identify high-value customers and orders  
- Evaluate sales performance across cities  
- Understand product category trends  
- Generate insights to support business decision-making  
## 📂 Database Design
The project is based on three relational tables:
### Customers
- customer_id (Primary Key)  
- customer_name  
- city  
- signup_date  
### Orders
- order_id (Primary Key)  
- customer_id (Foreign Key)  
- order_date  
- total_amount  
### Products
- product_id (Primary Key)  
- product_name  
- category  
- price  
Foreign key relationships were implemented to maintain data integrity between Customers and Orders.
## 🛠 Tools & Technologies
- SQL Server / MySQL   
- SQL Queries  
## 🔍 Key SQL Concepts Used
- SELECT, WHERE, ORDER BY  
- GROUP BY, HAVING  
- INNER JOIN 
- Subqueries  
- Aggregate Functions (SUM, COUNT, AVG, MAX, MIN)  
- Constraints (PRIMARY KEY, FOREIGN KEY)  
## 📊 Analysis Performed
- Filtered customers and orders based on city and order value  
- Identified top-spending customers  
- Analyzed total and average order values  
- Evaluated order frequency per customer  
- Generated category-wise product analysis    
- Compared orders with average order value using subqueries  
## 💡 Key Insights
- Customers from Bangalore contributed significantly to sales  
- Certain customers generated higher lifetime value  
- Electronics and Furniture categories showed strong performance  
- High-value orders had major impact on total revenue  
- Repeat customers contributed more to overall business growth  
## 📁 Project Structure## 
🚀 How to Run This Project
1. Create the Customers, Orders, and Products tables  
2. Insert the sample data provided  
3. Apply primary and foreign key constraints  
4. Execute SQL queries for analysis  
5. Review results and derive insights  
## 👩‍💻 Author
**Priyanka Alur**  
Aspiring Data Analyst | SQL | Excel | Python | Power BI  
## 📌 Acknowledgement
This project is part of my continuous learning journey in data analytics and reflects my dedication to building strong analytical and problem-solving skills.

