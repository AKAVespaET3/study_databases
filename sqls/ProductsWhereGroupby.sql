
SELECT COUNT(*) AS COUNT_CategoryID , PD.CategoryID
FROM Products AS PD
GROUP BY PD.CategoryID
HAVING COUNT(PD.CategoryID) >= 10;