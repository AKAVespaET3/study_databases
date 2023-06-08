SELECT PD.ProductName, PD.Price, ODT.Quantity, CST.CustomerName
FROM Products AS PD
INNER JOIN OrderDetails AS ODT ON PD.ProductID = ODT.ProductID
INNER JOIN Orders AS ODS ON ODT.OrderID = ODS.OrderID
INNER JOIN Customers AS CST ON ODS.CustomerID = CST.CustomerID
