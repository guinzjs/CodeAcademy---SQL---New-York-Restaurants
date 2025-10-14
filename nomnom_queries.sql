SELECT *
FROM nomnom;

-- Distinct Neighborhoods
SELECT DISTINCT neighborhood
FROM nomnom;

-- Cuisine types
SELECT DISTINCT cuisine
FROM nomnom;

-- Filter for cuisine
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese'
ORDER BY review DESC;

-- Filter for review 4 and above
SELECT *
FROM nomnom
WHERE review > 4;

-- Filter for cuisine and price
SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

-- Find the restaurant by name
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

-- Filter for specific neighborhoods
SELECT *
FROM nomnom
WHERE neighborhood IN ('Midtown', 'Downtown', 'Chinatown');

-- Find rows with null health values
SELECT *
FROM nomnom
WHERE health IS NULL;

-- Top 10 restaurants by review
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Rating system
SELECT 
  name,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS Rating
FROM nomnom;
