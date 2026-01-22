-- =====================================
-- SALES ANALYSIS PROJECT (SQL)
-- Dataset: Global Superstore
-- =====================================

USE sales_analysis;

-- STEP 1: Sanity Check
SELECT COUNT(*) AS total_rows FROM sales_data;
SELECT * FROM sales_data LIMIT 5;

-- STEP 2: Overall Business KPIs
SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit / sales) * 100, 2) AS avg_profit_margin
FROM sales_data
WHERE sales > 0;

-- STEP 3: Category-wise Performance
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY category
ORDER BY total_profit DESC;

-- STEP 4: Sub-Category Loss Analysis
SELECT
    sub_category,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY sub_category
ORDER BY total_profit ASC;

-- STEP 5: Region-wise Performance
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_profit DESC;

-- STEP 6: Category Profit Margin
SELECT
    category,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM sales_data
GROUP BY category
ORDER BY profit_margin_pct DESC;

-- STEP 7: Rank Sub-Categories by Profit (Window Function)
SELECT
    sub_category,
    ROUND(SUM(profit), 2) AS total_profit,
    RANK() OVER (ORDER BY SUM(profit)) AS profit_rank
FROM sales_data
GROUP BY sub_category;

-- STEP 8: Monthly Sales & Profit Trend
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY year, month
ORDER BY year, month;

-- STEP 9: Loss-Making Months
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_data
GROUP BY year, month
HAVING total_profit < 0
ORDER BY total_profit;

-- STEP 10: Discount Impact on Profit
SELECT
    discount,
    ROUND(AVG(profit), 2) AS avg_profit
FROM sales_data
GROUP BY discount
ORDER BY discount;
-- END OF SALES ANALYSIS SQL SCRIPT