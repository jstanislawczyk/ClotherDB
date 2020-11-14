CREATE TABLE "Customer" (
	id SERIAL PRIMARY KEY,
	firstName VARCHAR(60),
	lastName VARCHAR(80),
	email VARCHAR(80),
	phoneNumber VARCHAR(30),
	password VARCHAR(60)
);

CREATE TABLE "Employee" (
	id SERIAL PRIMARY KEY,
	chiefId INT REFERENCES "Employee" (id),
	firstName VARCHAR(60),
	lastName VARCHAR(80),
	email VARCHAR(80),
	phoneNumber VARCHAR(30),
	password VARCHAR(60),
	jobTitle VARCHAR(40),
	payment MONEY,
	hireDate DATE
);

CREATE TABLE "Address" (
	customerId INT UNIQUE REFERENCES "Customer" (id),
	employeeId INT UNIQUE REFERENCES "Employee" (id),
	country VARCHAR(80),
	city VARCHAR(80),
	street VARCHAR(80),
	zipCode VARCHAR(80)
);

CREATE TABLE "Order" (
	id SERIAL PRIMARY KEY NOT NULL,
	customerId INT REFERENCES "Customer" (id),
	status VARCHAR(60),
	date DATE
);

CREATE TABLE "Payment" (
	orderId INT UNIQUE REFERENCES "Order" (id),
	value MONEY,
	type VARCHAR(40),
	provider VARCHAR(60)
);

CREATE TABLE "Category" (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(60)
);

CREATE TABLE "Product" (
	id SERIAL PRIMARY KEY,
	categoryId INT REFERENCES "Category" (id),
	managedBy INT REFERENCES "Employee" (id),
	name VARCHAR(60),
	price MONEY,
	description VARCHAR(80)
);

CREATE TABLE "Photo" (
	id SERIAL PRIMARY KEY,
	productId INT REFERENCES "Product" (id),
	url VARCHAR(200),
	description VARCHAR(60)
);

CREATE TABLE "ProductOrderQuantity" (
	orderId INT REFERENCES "Order" (id),
	productId INT REFERENCES "Product" (id),
	quantity INT,
	price MONEY,
	discountInPercent INT,
	CHECK (discountInPercent BETWEEN 0 AND 100)
);
