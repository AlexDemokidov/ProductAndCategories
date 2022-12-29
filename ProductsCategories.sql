CREATE TABLE Products (
	"Name" nvarchar(50) PRIMARY KEY
);

INSERT INTO Products
VALUES
	('Bread'),
	('BMW'),
	('Iphone'),
	('Milk'),
	('Table'),
	('Microphone');

CREATE TABLE Categories (
	"Name" nvarchar(50) PRIMARY KEY
);

INSERT INTO Categories
VALUES
	('Food'),
	('Car'),
	('Phone'),
	('Gadget');

CREATE TABLE ProductsCategories (
	"ProductName" nvarchar(50) FOREIGN KEY REFERENCES Products(Name),
	"CategoryName" nvarchar(50) FOREIGN KEY REFERENCES Categories(Name),
);

INSERT INTO ProductsCategories
VALUES
	('Bread', 'Food'),
	('BMW', 'Car'),
	('Iphone', 'Phone'),
	('Iphone', 'Gadget'),
	('Milk', 'Food'),
	('Table', Null),
	('Microphone', 'Gadget');

SELECT PC."ProductName", PC."CategoryName"
From ProductsCategories PC