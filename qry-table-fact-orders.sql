use CuboNortWnd

if (OBJECT_ID ('dbo.FactOrders', 'U') > 0)
	drop table FactOrders;

SELECT OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipCity, 
isnull(ShipRegion,'N/A') as ShipRegion, 
ShipCountry
into FactOrders
FROM   NorthWnd.dbo.Orders
where 1 = 0


