# Codecademy SQL Practice – Nomnom Dataset

Practice project from the Codecademy SQL course.  
I built a series of SQL queries to explore, filter, and analyze restaurant data using the **nomnom** dataset.

## 🧠 Skills Practiced
- SELECT, WHERE, ORDER BY, DISTINCT
- Filtering with LIKE, IN, and AND
- CASE expressions
- Sorting and limiting results

## 📂 File
- `nomnom_queries.sql` — all queries used in the project

## 🧾 Example Query
```sql
--Rating System
SELECT name,
  CASE
   WHEN review >4.5 THEN 'Extraordinary'
   WHEN review >4 THEN 'Excellent'
   WHEN review >3 THEN 'Good'
   WHEN review >2 THEN 'Fair'
   ELSE 'Poor'
  END AS 'Rating' FROM nomnom;
