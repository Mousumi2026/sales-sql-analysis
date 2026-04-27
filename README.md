# 📊 Sales SQL Analysis Project

## 🔍 Overview
This project analyzes a sales dataset using SQL (PostgreSQL).  
The goal is to extract meaningful business insights from raw transactional data.

We explore:
- Sales performance across regions
- Product category performance
- Top-performing salespersons
- Profitability analysis
- Time-based trends

---

## 🧱 Dataset Description

The dataset contains 4 relational tables:

- **sales** → transaction data (amount, customers, boxes, date)
- **products** → product details (category, name, cost per box)
- **people** → salesperson information (name, team, location)
- **geo** → region and geography mapping

---

## ⚙️ Tools & Technologies

- PostgreSQL
- SQL
- Window Functions
- CTE (Common Table Expressions)
- JOIN operations
- Aggregation functions

---

## 📊 Key SQL Techniques Used

- SELECT & Filtering
- INNER & LEFT JOIN
- GROUP BY Aggregations
- CASE WHEN Logic
- Window Functions (RANK, DENSE_RANK)
- Date functions (EXTRACT, DATE_TRUNC, TO_CHAR)
- Profit calculations

---

## 📈 Business Questions Solved

- Which region generates the highest revenue?
- Who are the top-performing salespersons?
- Which product categories perform best?
- What is the monthly sales trend?
- What is the profit margin per product?

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


---

## 📌 Key Takeaways

- Business performance varies by region and category
- A small group of salespersons drives most revenue
- Profitability differs significantly from revenue
- Time-based analysis shows seasonal patterns


GROUP BY p."Category"
ORDER BY total_sales DESC;
