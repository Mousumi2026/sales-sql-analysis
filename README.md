# 📊 Sales SQL Analysis Project

## 📌 Executive Summary

This project analyzes a sales dataset using SQL (PostgreSQL) to extract meaningful business insights related to revenue, product performance, regional trends, and

profitability.

The main goal is to convert raw transactional data into actionable insights that support data-driven business decisions.

---

## 🧱 Dataset Overview

The dataset consists of four relational tables:

- **sales** → transaction data (amount, customers, boxes, sale date)
  
- **products** → product details (category, product name, cost per box)
  
- **people** → salesperson information (name, team, location)
  
- **geo** → geographical mapping (region, geo)

---

## ⚙️ Tools & Technologies

- PostgreSQL
  
- SQL
  
- JOINs ( LEFT JOIN)
  
- GROUP BY Aggregations
  
- Window Functions (RANK, DENSE_RANK)
  
- CTE (Common Table Expressions)
  
- CASE WHEN Logic
  
- Date Functions (EXTRACT, DATE_TRUNC, TO_CHAR)

---

## 🧠 SQL Concepts Applied

- Data filtering and aggregation
  
- Multi-table joins
  
- Ranking and window functions
  
- Profit and margin calculations
  
- Time-based trend analysis
  
- Conditional logic using CASE WHEN

---

## 📊 Example Query

```sql
SELECT 
    p."Category",
    SUM(s."Amount") AS total_sales
FROM sales s
JOIN products p ON s."PID" = p."PID"
GROUP BY p."Category"
ORDER BY total_sales DESC;

```

## 📊 Key Insights

### 🌍 Regional Performance

- APAC region is the highest revenue generator
   
- Other regions show relatively lower contribution  

### 👨‍💼 Sales Performance

- Top 20% salespersons contribute majority of revenue
  
- Performance is uneven across teams  

### 📦 Product Performance

- Revenue is concentrated in specific categories
  
- Product demand varies significantly  

### 💰 Profitability Insights

- High revenue products are not always high profit
  
- Profit margins differ widely across products  

### 📅 Time-Based Trends

- Clear seasonal fluctuations in sales pattern  

## 🎯 Business Impact

This analysis provides actionable insights to support business decisions:

-- Identify high-performing regions for expansion strategies

-- Optimize product portfolio based on revenue and profitability

-- Improve sales performance through targeted incentives

-- Enhance inventory planning based on seasonal trends

-- Support data-driven marketing decisions


## 🚀  Conclusion

This project demonstrates the ability to analyze real-world business data using SQL and extract actionable insights that support strategic decision-making.
