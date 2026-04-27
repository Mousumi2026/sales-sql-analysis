## 📊 Sales Data Analysis Project (POSTGRESQL)


## 🔍 Overview

This project analyzes a sales dataset using SQL (PostgreSQL).

It explores sales performance across products, regions, and salespersons to extract meaningful business insights.

## 🧱 Dataset Structure

The dataset contains 4 main tables:

** sales → transaction details (amount, customers, boxes, date)

** products → product information (name, category, cost per box)

** people → salesperson details (name, team, location)

** geo → geographical mapping (region, geo)

## ⚙️ Tools & Technologies

  - PostgreSQL
    
  - SQL (JOIN, GROUP BY, CTE, Window Functions)
    
  - Data Analysis Concepts

## 📈 Key Business Questions Solved

✔️ Which salesperson generated the highest sales?

✔️ Which product categories perform best?

✔️ Which region has the highest revenue?

✔️ What is the monthly sales trend?

✔️ Who are the top performers per region?

✔️ What is the profit margin by product?

## 🧠 SQL Techniques Used
    --  SELECT & Filtering
    
    --  JOIN (LEFT JOIN)
    
    --  GROUP BY Aggregations
    
    --  CASE WHEN Logic
    
    --  Common Table Expressions (CTE)
    
    --  Window Functions (RANK)
    
    --  Date Functions (DATE_TRUNC, EXTRACT, TO_CHAR)

## 🏆 Key Insights
  ✔️ Certain regions generate significantly higher revenue than others
  
  ✔️ A small number of salespersons contribute most of the sales
  
  ✔️ Product categories show clear performance differences
  
  ✔️ Sales show monthly trends and seasonality
  
  ✔️ Profit margin varies significantly by product

## 📊 Example Query
</>  Markdown
SELECT 

    p."Category",
    
    SUM(s."Amount") AS total_sales
    
FROM sales AS s

JOIN products p ON s."PID" = p."PID"

GROUP BY p."Category"

ORDER BY total_sales DESC;


## 🚀 Outcome

This project demonstrates my ability to:

✔️ Analyze real-world business data

✔️ Write advanced SQL queries

✔️ Extract actionable insights

✔️ Work with relational databases
