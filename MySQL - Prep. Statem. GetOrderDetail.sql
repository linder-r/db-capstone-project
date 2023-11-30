PREPARE GetOrderDetail FROM 'SELECT OrderId, Quantity, TotalCost FROM Orders WHERE CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;