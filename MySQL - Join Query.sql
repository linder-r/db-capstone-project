SELECT Customers.CustomerID, Customers.FullName, Orders.OrderID, 
Orders.TotalCost, Menus.MenuName, MenuItems.CourseName, MenuItems.StarterName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menus ON Orders.MenuID = Menus.MenuID
INNER JOIN MenuItems ON Menus.MenuItemID = MenuItems.MenuItemID
WHERE Orders.TotalCost > 150.00
ORDER BY TotalCost ASC;