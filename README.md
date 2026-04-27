# 📊 Sales SQL Analysis Project

## 1. Overview
## 2. Dataset Description
## 3. Tools Used
## 4. SQL Techniques Used
## 5. Business Questions
## 6. Key Insights 
## 7. Business Impact 
## 8. Example
## 9. Conclusion

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


---

## 📊 Key SQL Techniques Used

- SELECT & Filtering
- INNER & LEFT JOIN
- GROUP BY Clause
- Aggregate Function(sum, avg,count)
- CASE WHEN Logic
- Window Functions (RANK, DENSE_RANK)
- CTE (Common Table Expressions)
- JOIN operations
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

## 📊 Key Insights

- APAC region generates the highest revenue  
- Top 20% salespersons contribute majority of total sales  
- Product performance varies significantly across categories  
- Some high-revenue products have lower profit margins  
- Sales show clear monthly seasonal patterns

## 🎯 Business Impact

This analysis helps the business to:

- Identify high-performing regions for expansion  
- Recognize top-performing salespersons for incentives  
- Optimize product portfolio based on profitability  
- Improve marketing strategy based on category performance  
- Forecast seasonal demand trends  

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

## 🚀 Conclusion

This project demonstrates strong SQL skills and the ability to extract meaningful business insights from raw data.









