CREATE DATABASE MyShop

CREATE TABLE Suppliers (
	SupplierID int IDENTITY(1,1) PRIMARY KEY,
	SupplierName varchar(255) NOT NULL,
	City varchar(255),
	Country varchar(255)
);

CREATE TABLE Categories (
	CategoryID int IDENTITY(1,1) PRIMARY KEY,
	CategoryName varchar(255) NOT NULL,
	Description varchar(255),
);

CREATE TABLE Products(
	ProductID int IDENTITY(1,1) PRIMARY KEY,
	ProductName varchar(255) NOT NULL,
	SupplierID int FOREIGN KEY REFERENCES Suppliers(SupplierID),
	CategoryID int FOREIGN KEY REFERENCES Categories(CategoryID),
	Price float(2)
)

INSERT INTO Suppliers (SupplierName, City, Country ) 
VALUES ('Exotic Liquid', 'London', 'UK');
INSERT INTO Suppliers (SupplierName, City, Country ) 
VALUES ('New Orleans Cajun Delights', 'New Orleans', 'USA');
INSERT INTO Suppliers (SupplierName, City, Country ) 
VALUES ('Grandma Kelly’s Homestead', 'Ann Arbor', 'USA');
INSERT INTO Suppliers (SupplierName, City, Country ) 
VALUES ('Tokyo Traders', 'Tokyo', 'Japan');
INSERT INTO Suppliers (SupplierName, City, Country ) 
VALUES ('Cooperativa de Quesos ‘Las Cabras’', 'Oviedo', 'Spain');


INSERT INTO Categories(CategoryName, Description) 
VALUES('Beverages', 'Soft drinks, coffees, teas, beers, and ales')
INSERT INTO Categories(CategoryName, Description) 
VALUES('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT INTO Categories(CategoryName, Description) 
VALUES('Confections', 'Desserts, candies, and sweet breads')
INSERT INTO Categories(CategoryName, Description) 
VALUES('Dairy Products', 'Cheeses')
INSERT INTO Categories(CategoryName, Description) 
VALUES('Grains/Cereals', 'Breads, crackers, pasta, and cereal')


INSERT INTO Products(ProductName, SupplierID, CategoryID, Price)
VALUES ('Chais', 1, 1, 18.00);
INSERT INTO Products(ProductName, SupplierID, CategoryID, Price)
VALUES ('Chang', 1, 1, 19.00);
INSERT INTO Products(ProductName, SupplierID, CategoryID, Price)
VALUES ('Aniseed Syrup', 1, 2, 10.00);
INSERT INTO Products(ProductName, SupplierID, CategoryID, Price)
VALUES ('Chef Anton’s Cajun Seasoning', 2, 2, 22.00);
INSERT INTO Products(ProductName, SupplierID, CategoryID, Price)
VALUES ('Chef Anton’s Gumbo Mix', 2, 2, 21.35);

SELECT * FROM Suppliers;

SELECT * FROM Categories;

SELECT * FROM Products;
