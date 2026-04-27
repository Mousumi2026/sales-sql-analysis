-- =========================
-- 1. BASIC QUERIES
-- =========================

SELECT 
    s."Amount",
    s."Customers"
FROM sales AS s;

-- =========================
-- 2. FILTERING
-- =========================

SELECT *
FROM sales AS s
WHERE s."Amount" > 10000
ORDER BY s."Amount" DESC;

-- =========================
-- 3. Top Salesperson
-- =========================
SELECT
    p."Salesperson",
    SUM(s."Amount") AS total_sales
FROM sales AS s
LEFT JOIN people p ON s."SPID" = p."SPID"
GROUP BY p."Salesperson"
ORDER BY total_sales DESC;

-- 4. Sales by Product ID
-- =========================

SELECT
    s."PID",
    SUM(s."Amount") AS total_sales
FROM sales s
GROUP BY s."PID"
ORDER BY total_sales DESC;

-- =========================

-- 5. Sales by Product Name
-- =========================

SELECT 
    p."Product",
    SUM(s."Amount") AS total_sales
FROM sales s
JOIN products p ON s."PID" = p."PID"
GROUP BY p."Product"
ORDER BY total_sales DESC;

-- =========================


-- 6. Average Sales by Region
-- =========================

SELECT
    g."Region",
    ROUND(AVG(s."Amount"), 0) AS avg_sales
FROM sales s
LEFT JOIN geo g ON s."GeoID" = g."GeoID"
GROUP BY g."Region"
ORDER BY avg_sales DESC;

-- =========================



-- 7. Top Salesperson per Region
-- =========================

SELECT *
FROM (
    SELECT
        g."Region",
        p."Salesperson",
        SUM(s."Amount") AS total_sales,
        RANK() OVER (
            PARTITION BY g."Region"
            ORDER BY SUM(s."Amount") DESC
        ) AS sales_rank
    FROM sales s
    LEFT JOIN people p ON s."SPID" = p."SPID"
    LEFT JOIN geo g ON s."GeoID" = g."GeoID"
    GROUP BY g."Region", p."Salesperson"
) t
WHERE sales_rank = 1
ORDER BY total_sales DESC;

-- =========================

-- 8. Best Product Category
-- =========================

SELECT 
    p."Category",
    SUM(s."Amount") AS total_sales
FROM sales s
LEFT JOIN products p ON s."PID" = p."PID"
GROUP BY p."Category"
ORDER BY total_sales DESC;

-- =========================

-- 9. CTE + Performance
-- =========================

WITH sales_data AS (
    SELECT 
        p."Category",
        SUM(s."Amount") AS total_sales
    FROM sales s
    JOIN products p ON s."PID" = p."PID"
    GROUP BY p."Category"
)
SELECT 
    category,
    total_sales,
    ROUND(AVG(total_sales) OVER (), 2) AS avg_sales,
    CASE 
        WHEN total_sales > AVG(total_sales) OVER () THEN 'High'
        ELSE 'Low'
    END AS performance
FROM sales_data;

-- =========================

-- 10. Time Analysis
-- =========================

SELECT 
    EXTRACT(MONTH FROM s."SaleDate") AS month,
    EXTRACT(YEAR FROM s."SaleDate") AS year,
    SUM(s."Amount") AS total_sales
FROM sales s
GROUP BY year, month
ORDER BY year, month;

-- =========================

-- 11. Clean Monthly Trend
-- =========================

SELECT 
    TO_CHAR(DATE_TRUNC('month', s."SaleDate"), 'YYYY-MM') AS month,
    SUM(s."Amount") AS total_sales
FROM sales s
GROUP BY month
ORDER BY month;

-- =========================


