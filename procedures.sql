/* Select customer by id */

DROP FUNCTION IF EXISTS selectCustomerById(integer);

CREATE FUNCTION selectCustomerById(customerId int)
	RETURNS TABLE (id int, firstName varchar, lastName varchar, email varchar, phoneNumber varchar, password varchar) 
AS
$$
	BEGIN
		RETURN QUERY 
		SELECT * FROM "Customer" AS customer
		WHERE customer.id = customerId;
	END
$$ LANGUAGE plpgsql;


SELECT * FROM selectCustomerById(1);

/* Select employee by id */

DROP FUNCTION IF EXISTS selectEmployeeById(integer);

CREATE FUNCTION selectEmployeeById(employeeId int)
	RETURNS TABLE (
		id int, chiefId int, firstName varchar, lastName varchar, email varchar, phoneNumber varchar,
		password varchar, jobTitle varchar, payment money, hireDate date
 	) 
AS
$$
	BEGIN
		RETURN QUERY 
		SELECT * FROM "Employee" AS employee
		WHERE employee.id = employeeId;
	END
$$ LANGUAGE plpgsql;


SELECT * FROM selectEmployeeById(1);

/* Create employee */

CREATE OR REPLACE PROCEDURE createEmployee(
   firstname varchar, lastname varchar, email varchar, phonenumber varchar, password varchar, jobtitle varchar, payment bigint
)  
AS $$
	BEGIN
		INSERT INTO "Employee"(firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
		VALUES (firstname, lastname, email, phonenumber, MD5(password), jobtitle, payment, CURRENT_DATE);
	END
$$ LANGUAGE plpgsql;

call createEmployee('Eugeniusz', 'Olejarczyk', 'Olejarczyk@gmail.com', '+48 111111111', '1qazXSW@', 'CEO', 3000);

/* Update employee */

CREATE OR REPLACE PROCEDURE updateEmployee(
   employeeId int, newFirstname varchar, newLastname varchar, newPhoneNumber varchar, newJobTitle varchar, newPayment bigint
)  
AS $$
	BEGIN
		UPDATE "Employee"
		SET firstname = newFirstname, lastname = newLastname, phonenumber = newPhoneNumber, jobTitle = newJobTitle, payment = newPayment
		WHERE id = employeeId;
	END
$$ LANGUAGE plpgsql;

call updateEmployee(11, 'TEST1', 'TEST2', '123456789', 'INTERN', 1111);

/* Create customer */

CREATE OR REPLACE PROCEDURE createCustomer(
   firstname varchar, lastname varchar, email varchar, phonenumber varchar, password varchar
)  
AS $$
	BEGIN
		INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
		VALUES (firstname, lastname, email, phonenumber, MD5(password));
	END
$$ LANGUAGE plpgsql;

call createCustomer('Testowy', 'test', 'Olejarczyk@gmail.com', '+48 111111111', '1qazXSW@');

/* Update customer */

CREATE OR REPLACE PROCEDURE updateCustomer(
   customerId int, newFirstname varchar, newLastname varchar, newPhoneNumber varchar
)  
AS $$
	BEGIN
		UPDATE "Customer"
		SET firstname = newFirstname, lastname = newLastname, phonenumber = newPhoneNumber
		WHERE id = customerId;
	END
$$ LANGUAGE plpgsql;

call updateCustomer(8, 'TEST1', 'TEST2', '123456789');

/* Create customer order */

CREATE OR REPLACE PROCEDURE createOrder(customerId int)  
AS $$
	BEGIN
		INSERT INTO "Order"(customerid, status, date)
		VALUES (customerId, 'CREATED', CURRENT_DATE);
	END
$$ LANGUAGE plpgsql;

call createOrder(1);

/* Create customer order */

CREATE OR REPLACE PROCEDURE createOrder(customerId int)  
AS $$
	BEGIN
		INSERT INTO "Order"(customerid, status, date)
		VALUES (customerId, 'CREATED', CURRENT_DATE);
	END
$$ LANGUAGE plpgsql;

call createOrder(1);

/* Make payment */

CREATE OR REPLACE PROCEDURE makePaymentForOrder(orderId int, value bigint, type varchar, provider varchar)  
AS $$
	BEGIN
		UPDATE "Order" AS orders
		SET status = 'PAID'
		WHERE orders.id = orderId;

		INSERT INTO "Payment"(orderid, value, type, provider)
		VALUES (orderId, value, type, provider);
	END
$$ LANGUAGE plpgsql;

call makePaymentForOrder(17, 999, 'Bank', 'Pekao');


/* Add order element */

CREATE OR REPLACE PROCEDURE addElementToOrder(orderId int, productId int, quantity int, price bigint, discount int)  
AS $$
	BEGIN
		INSERT INTO "ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
		VALUES (orderid, productId, quantity, price, discount);
	END
$$ LANGUAGE plpgsql;

call addElementToOrder(1, 1, 3, 100, 0);


/* Add element to order */

CREATE OR REPLACE PROCEDURE addElementToOrder(orderId int, productId int, quantity int, price bigint, discount int)  
AS $$
	BEGIN
		INSERT INTO "ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
		VALUES (orderid, productId, quantity, price, discount);
	END
$$ LANGUAGE plpgsql;

call addElementToOrder(1, 1, 3, 100, 0);