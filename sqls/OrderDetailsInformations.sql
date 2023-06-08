-- - Table : OrderDetails
-- - 조건 : 제품명,가격, 주문 갯수, 고객명 표시

SELECT PD.ProductName, PD.Price, ODT.Quantity, CST.CustomerName
FROM Products AS PD
INNER JOIN OrderDetails AS ODT ON PD.ProductID = ODT.ProductID
INNER JOIN Orders AS ODS ON ODT.OrderID = ODS.OrderID
INNER JOIN Customers AS CST ON ODS.CustomerID = CST.CustomerID


-- Number of Records: 518
-- ProductName	Price	Quantity	CustomerName
-- Queso Cabrales	21	12	Wilman Kala
-- Singaporean Hokkien Fried Mee	14	10	Wilman Kala
-- Mozzarella di Giovanni	34.8	5	Wilman Kala
-- Tofu	23.25	9	Tradição Hipermercados
-- Manjimup Dried Apples	53	40	Tradição Hipermercados
-- Jack's New England Clam Chowder	9.65	10	Hanari Carnes
-- Manjimup Dried Apples	53	35	Hanari Carnes
-- Louisiana Fiery Hot Pepper Sauce	21.05	15	Hanari Carnes
-- Gustaf's Knäckebröd	21	6	Victuailles en stock