
SELECT COUNT(*) AS COUNT_CategoryID , PD.CategoryID
FROM Products AS PD
GROUP BY PD.CategoryID
HAVING COUNT(PD.CategoryID) >= 10;

-- Number of Records: 5
-- COUNT_CategoryID	CategoryID
-- 12	1
-- 12	2
-- 13	3
-- 10	4
-- 12	8