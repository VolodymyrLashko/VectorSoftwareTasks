
--Select product with product name that begins with ‘C’.
SELECT * FROM Products 
WHERE ProductName LIKE 'C%';

--Select product with the smallest price.
SELECT TOP 1 * FROM Products 
ORDER BY Price

--Select cost of all products from the USA.
SELECT ROUND(SUM(Products.Price), 4, 1) FROM Products
JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.Country = 'USA';

--Select suppliers that supply Condiments.
SELECT DISTINCT Suppliers.SupplierID, Suppliers.SupplierName, Suppliers.City, Suppliers.Country
FROM Suppliers
JOIN Products
ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories
ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Condiments'

--Add to database new supplier with name: ‘Norske Meierier’, city: ‘Lviv’, country: ‘Ukraine’ which will supply new product with name: ‘Green tea’, price: 10, and related to category with name: ‘Beverages’.
INSERT INTO Suppliers (SupplierName, City, Country ) 
VALUES ('Norske Meierier', 'Lviv', 'Ukraine');

INSERT INTO Products(ProductName, SupplierID, CategoryID, Price)
VALUES ('Green tea', (
	SELECT TOP 1 SupplierID FROM Suppliers
	WHERE Suppliers.SupplierName = 'Norske Meierier'
), (
	SELECT TOP 1 CategoryID FROM Categories
	WHERE Categories.CategoryName = 'Beverages'
), 10.00);
