-- Use database
USE ecommerce;
-- View Data
SELECT * FROM `sample - superstore` LIMIT 10;
--  WHERE
SELECT * 
FROM `sample - superstore`
WHERE Sales > 500;
-- ORDER BY
SELECT *
FROM `sample - superstore`
ORDER BY Sales DESC;
-- GROUP BY + Aggregate
SELECT Category, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Category;
--  Average Revenue
SELECT AVG(Sales) AS Avg_Revenue
FROM `sample - superstore`;
-- COUNT Orders per Region
SELECT Region, COUNT(`Order ID`) AS Total_Orders
FROM `sample - superstore`
GROUP BY Region;
--  HAVING
SELECT Category, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Category
HAVING Total_Sales > 50000;
-- Subquery
SELECT *
FROM `sample - superstore`
WHERE Sales > (
    SELECT AVG(Sales)
    FROM `sample - superstore`
);
-- Create View
CREATE VIEW sales_summary AS
SELECT Region, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Region;
-- View data
SELECT * FROM sales_summary;
--  Handle NULL values
SELECT IFNULL(Profit, 0) AS Clean_Profit
FROM `sample - superstore`;
-- Handle NULL values
SELECT IFNULL(Profit, 0) AS Clean_Profit
FROM `sample - superstore`;
-- Top Customers
SELECT `Customer Name`, SUM(Sales) AS Total_Spent
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY Total_Spent DESC
LIMIT 10;
-- Date Analysis
SELECT YEAR(`Order Date`) AS Year, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Year;
-- Index 
CREATE INDEX idx_sales ON `sample - superstore`(Sales);
--  Profit Analysis
SELECT Category, AVG(Profit) AS Avg_Profit
FROM `sample - superstore`
GROUP BY Category;
-- Region Wise Sales
SELECT Region, SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Sales DESC;

