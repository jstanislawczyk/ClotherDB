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