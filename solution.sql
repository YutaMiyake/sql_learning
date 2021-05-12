-- Q1
SELECT i1.name, i2.name, i1.calorie+i2.calorie as total_calorie
FROM ice_cream_flavor i1
INNER JOIN ice_cream_flavor i2
ON i1.name > i2.name;

-- Q2
SELECT i1.name, i2.name, i1.calorie+i2.calorie as total_calorie
FROM ice_cream_flavor i1
INNER JOIN ice_cream_flavor i2
ON i1.name > i2.name;
WHERE i1.calorie+i2.calorie <= 350
  AND i1.kind = "ELEGANT" or i2.kind = "ELEGANT"
ORDER BY total_calorie
LIMIT 1;

-- Q3
SELECT i1.name, i2.name, i3.name, 
  i1.calorie+i2.calorie+i3.calorie as total_calorie
FROM ice_cream_flavor i1 
  INNER JOIN ice_cream_flavor i2 
  ON i1.name > i2.name
    INNER JOIN ice_cream_flavor i3
    ON i2.name > i3.name
WHERE i1.kind = "ELEGANT" OR i2.kind = "ELEGANT" OR i3.kind = "ELEGANT"
ORDER BY total_calorie
LIMIT 1;

-- Q4
ELECT MIN(name), kind
FROM ice_cream_flavor
GROUP BY kind
ORDER BY (CASE kind 
           WHEN "ELEGANT" THEN 1
           WHEN "THE 31" THEN 2
           ELSE 3 END);

-- Q5
SELECT name FROM ice_cream_flavor
   LEFT OUTER JOIN ice_cream_flavor_allergy a
   ON name = a.ice_name
   GROUP BY name
   HAVING MAX((CASE WHEN a.allergy_name = "大豆" THEN 1 ELSE 0 END)) = 0;S
