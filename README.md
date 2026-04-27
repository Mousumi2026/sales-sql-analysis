# 📊 Sales SQL Analysis Project

## 📌 Executive Summary

This project analyzes a sales dataset using SQL (PostgreSQL) to extract meaningful business insights related to revenue, product performance, regional trends, and profitability.

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
- JOINs (INNER & LEFT JOIN)
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

🌍 Regional Performance
APAC region generates the highest revenue
Revenue distribution varies across regions

## 👨‍💼 Sales Performance

Top 20% of salespersons contribute majority of total revenue
Performance varies significantly across teams and regions

## 📦 Product Performance

Certain product categories dominate overall sales
Category-wise variation is clearly visible

## 💰 Profitability Insights

High revenue does not always guarantee high profit
Profit margins vary significantly across products

## 📅 Time-Based Trends

Sales show clear seasonal and monthly variations

## 🎯 Business Impact

This analysis provides actionable insights to support business decisions:

-- Identify high-performing regions for expansion strategies

-- Optimize product portfolio based on revenue and profitability

-- Improve sales performance through targeted incentives

-- Enhance inventory planning based on seasonal trends

-- Support data-driven marketing decisions

## 🚀 Conclusion

This project demonstrates strong SQL skills and the ability to analyze real-world business data effectively. It highlights both technical expertise and business thinking required for a Data Analyst role.
