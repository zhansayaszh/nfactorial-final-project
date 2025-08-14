--Check duplicates--
SELECT
  Order_ID,
  Product_ID,
  COUNT(*) AS duplicate_count
FROM
  `da-nfactorial.student_Zhansaya_Sovetbek.sales`
GROUP BY
  1,2
HAVING
  COUNT(*) > 1;

--Check Why Duplicates--
Select * from `da-nfactorial.student_Zhansaya_Sovetbek.sales`
where Order_ID='CA-2016-137043';

--Remove Duplicates--
CREATE OR REPLACE TABLE `da-nfactorial.student_Zhansaya_Sovetbek.products` AS
SELECT DISTINCT *
FROM `da-nfactorial.student_Zhansaya_Sovetbek.products`;

--1--
SELECT
  products.Product_Name,
  ROUND(SUM(sales.Sales), 2) AS Total_Revenue
FROM
  `da-nfactorial.student_Zhansaya_Sovetbek.sales` AS sales
JOIN
  `da-nfactorial.student_Zhansaya_Sovetbek.products` AS products
ON
  sales.Product_ID = products.Product_ID
GROUP BY
  1
ORDER BY
  Total_Revenue DESC
LIMIT 5;

--2--
SELECT
  customers.Region,
  ROUND(AVG(sales.Discount), 4) AS Avg_Discount
FROM
  `da-nfactorial.student_Zhansaya_Sovetbek.sales` AS sales
JOIN
  `da-nfactorial.student_Zhansaya_Sovetbek.orders` AS orders
  ON sales.Order_ID = orders.Order_ID
JOIN
  `da-nfactorial.student_Zhansaya_Sovetbek.customers` AS customers
  ON orders.Customer_ID = customers.Customer_ID
GROUP BY
  customers.Region
ORDER BY
  Avg_Discount DESC;


















