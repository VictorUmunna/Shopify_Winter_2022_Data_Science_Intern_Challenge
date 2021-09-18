QUESTION 2
A. How many orders were shipped by Speedy Express in total?

SELECT COUNT(*) as NumberofOrders
FROM Orders as o
JOIN Shippers as s
ON o.ShipperID = s.ShipperID 
WHERE s.ShipperName = "Speedy Express"

Answer: The total number of orders shipped by Speedy Express is 54


B. What is the last name of the employee with the most orders?

SELECT e.LastName, COUNT(*) as NumofOrders
FROM Orders as o
JOIN Employees as e
ON o.EmployeeID = e.EmployeeID
GROUP BY e.LastName
ORDER BY NumofOrders DESC
LIMIT 1

Answer: The Last name of the employee with the most orders (40) is Peacock


C. What product was ordered the most by customers in Germany?

SELECT p.ProductName, SUM(od.Quantity) AS TotalOrdered
FROM OrderDetails as od
JOIN Products as p
ON od.ProductID = p.ProductID
JOIN Orders as o
ON od.OrderID = o.OrderID
JOIN Customers as c
ON o.CustomerID = c.CustomerID
WHERE c.Country = 'Germany'
GROUP BY p.ProductName
ORDER BY TotalOrdered DESC
LIMIT 1

Answer: Boston Crab Meat has the most orders(160 orders) from Germany




