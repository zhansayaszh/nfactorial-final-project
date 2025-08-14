# Retail Sales Analysis and Forecasting
In this project, I worked with historical retail sales data to identify the key factors that have the greatest impact on company profit. The data covered customers, orders, products, and detailed sales records, allowing me to view the business from multiple perspectives. I explored how discounts, product quantities, and categories affect total revenue and profit, and which customer segments generate the highest income.

The project covered the full data processing cycle — from loading and normalization to SQL-based analysis, advanced analytics and visualizations in Power BI, and building forecasting models using Python.

# Data Structure
The dataset is divided into four logically related tables:

customers — customer information: ID, name, segment, region, city, postal code.

products — product details: ID, category, sub-category, name.

orders — order details: order ID, order date, ship date, ship mode, customer ID.

sales — sales details: order ID, product ID, quantity, discount, profit, sales amount.

# SQL
In the SQL section, I first checked the table for duplicates. Then, by searching for repeated ID values, I identified rows that were identical across all columns. 

If all fields matched, I considered those rows duplicates and removed them from the table.

Then I worked on the following tasks:

1. Retrieve the top 5 products with the highest total revenue.

2. Calculate the average discount in each region.

3. Identify the most loyal customers over the entire period.

4. Compare the total profit across different product categories.

5. Determine the share of sales made with a discount out of total sales volume.

6. Join all four tables into a single detailed orders table and export the result to a CSV file.

I successfully completed all these tasks, and you can check my SQL code in the repository.

# Power BI

Data Loading

Imported the four tables: customers, products, orders, and sales.

Checked and configured relationships between the tables.

When I attempted to join the tables, I encountered a many-to-many relationship caused by duplicate records. To resolve this, I created a unique key in Google BigQuery, as it was more challenging to do in Power BI.

My approach was: if an ID was repeated but had different values in other columns, I appended additional numbers to that ID, for example:

Customer_ID → Customer_ID-1

Customer_ID → Customer_ID-2

































