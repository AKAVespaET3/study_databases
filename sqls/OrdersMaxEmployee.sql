
-- Table : Orders
-- 조건 : 가장 많이 주문 받은 회사 직원이름과 갯수

SELECT  MAX(REPY.CNT) AS MAX, REPY.NAME
FROM
(
SELECT ORD.EmployeeID, COUNT(ORD.EmployeeID) AS CNT, EPY.LastName AS NAME
FROM Orders AS ORD
JOIN Employees AS EPY
ON ORD.EmployeeID = EPY.EmployeeID
GROUP BY ORD.EmployeeID
) AS REPY

-- Result:
-- Number of Records: 1
-- MAX	NAME
-- 40	Peacock
