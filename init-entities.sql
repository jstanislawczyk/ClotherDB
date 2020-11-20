DELETE FROM "Address";
DELETE FROM "Photo";
DELETE FROM "Payment";
DELETE FROM "ProductOrderQuantity";
DELETE FROM "Order";
DELETE FROM "Customer";
DELETE FROM "Product";
DELETE FROM "Category";
DELETE FROM "Employee";

/* Employee */
ALTER SEQUENCE "Employee_id_seq" RESTART WITH 1;

INSERT INTO "Employee"(firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES ('Eugeniusz', 'Olejarczyk', 'Olejarczyk@gmail.com', '+48 111111111', MD5('1qazXSW@'), 'CEO', 10000, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (1, 'Janusz', 'Panasewicz', 'Panasewicz@gmail.com', '+48 111111111', MD5(random()::text), 'Teamleader', 6000, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (1, 'Jan', 'Borysewicz', 'Borysewicz@gmail.com', '+48 111111111', MD5(random()::text), 'Teamleader', 7000, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (2, 'Grzegorz', 'Markowski', 'Markowski@gmail.com', '+48 111111111', MD5(random()::text), 'Seller', 4000, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (2, 'Krzysztof', 'Sokołowski', 'Markowski@gmail.com', '+48 111111111', MD5(random()::text), 'Seller', 4300, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (3, 'Robert', 'Gawliński', 'Gawliński@gmail.com', '+48 111111111', MD5(random()::text), 'Seller', 4100, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (3, 'Grzegorz', 'Ciechowski', 'Ciechowski@gmail.com', '+48 111111111', MD5(random()::text), 'Seller', 3900, CURRENT_DATE);

INSERT INTO "Employee"(chiefid, firstname, lastname, email, phonenumber, password, jobtitle, payment, hiredate)
VALUES (3, 'Bartosz', 'Walaszek', 'Walaszek@gmail.com', '+48 111111111', MD5(random()::text), 'Intern', 2100, CURRENT_DATE);

/* Customer */
ALTER SEQUENCE "Customer_id_seq" RESTART WITH 1;

INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Krzysztof', 'Grabowski', 'Polak@gmail.com', '+48 111111111', MD5(random()::text));
		
INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Henryk', 'Kwinto', 'Kwinto@gmail.com', '+48 111111111', MD5(random()::text));
				
INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Romuald', 'Czystaw', 'Killer@gmail.com', '+48 111111111', MD5(random()::text));

INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Felicjan', 'Andrzejczak', 'Łosowski@gmail.com', '+48 111111111', MD5(random()::text));
		
INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Tommy', 'Vercetti', 'Vercetti@gmail.com', '+48 111111111', MD5(random()::text));

INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Diego', 'Milten', 'Milten@gmail.com', '+48 111111111', MD5(random()::text));

INSERT INTO "Customer"(firstname, lastname, email, phonenumber, password)
VALUES ('Robert', 'Kubica', 'Renka@powrut.com', '+48 111111111', MD5(random()::text));

/* Address */
INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (1, 'Poland', 'Ustrzyki', 'Górne', '45-111');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (2, 'Poland', 'Rzeszów', 'Słowackiego', '35-222');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (3, 'Poland', 'Rzeszów', 'Słowackiego', '35-222');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (4, 'Poland', 'Rzeszów', 'Rejtana', '35-222');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (5, 'Poland', 'Rzeszów', 'Hetmańska', '35-222');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (6, 'Poland', 'Rzeszów', 'Dąbrowskiego', '35-222');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (7, 'Poland', 'Rzeszów', 'Podkarpacka', '35-222');

INSERT INTO "Address"(employeeid, country, city, street, zipcode)
VALUES (8, 'Poland', 'Rzeszów', 'Generała Maczka', '35-222');

INSERT INTO "Address"(customerid, country, city, street, zipcode)
VALUES (1, 'Poland', 'Rzeszów', 'Rejtana', '35-222');

INSERT INTO "Address"(customerid, country, city, street, zipcode)
VALUES (2, 'Poland', 'Niebylec', '', '35-222');

INSERT INTO "Address"(customerid, country, city, street, zipcode)
VALUES (3, 'Poland', 'Gwoźnica', 'Rzym', '38-116');

INSERT INTO "Address"(customerid, country, city, street, zipcode)
VALUES (4, 'Poland', 'Lutcza', 'Kąty', '38-116');

INSERT INTO "Address"(customerid, country, city, street, zipcode)
VALUES (5, 'Poland', 'Rzeszów', 'Generała Maczka', '35-222');

/* Category */
ALTER SEQUENCE "Category_id_seq" RESTART WITH 1;

INSERT INTO "Category"(name)
VALUES ('Buty');

INSERT INTO "Category"(name)
VALUES ('Koszule');

INSERT INTO "Category"(name)
VALUES ('Spodnie');

INSERT INTO "Category"(name)
VALUES ('Płaszcze');

INSERT INTO "Category"(name)
VALUES ('Marynarki');

INSERT INTO "Category"(name)
VALUES ('Krawaty');

/* Product */
ALTER SEQUENCE "Product_id_seq" RESTART WITH 1;

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (1, 4, 'Trampki', 99.99, 'Niebieskie trampki');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (1, 6, 'sztyblety', 199.99, 'Brązowe sztyblety');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (1, 4, 'oksfordy', 249.99, 'Niebieskie trampki');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (2, 8, 'czarna koszula', 229.99, 'Koszula');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (2, 4, 'biała koszula', 229.99, 'Koszula biała');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (3, 5, 'niebieskie chinosy', 149.99, 'chino');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (3, 7, 'czarne chinosy', 149.99, 'chino');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (3, 6, 'jeansy', 89.99, '');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (4, 2, 'dyplomatka', 599.99, '');

INSERT INTO "Product"(categoryid, managedby, name, price, description)
VALUES (5, 3, 'marynarka', 399.99, 'casualowa');

/* Photo */
ALTER SEQUENCE "Photo_id_seq" RESTART WITH 1;

INSERT INTO "Photo"(productid, url, description)
VALUES (2, concat('http://www.hosting/pl/', MD5(random()::text)), 'Photo 1');

INSERT INTO "Photo"(productid, url, description)
VALUES (2, concat('http://www.hosting/pl/', MD5(random()::text)), 'Photo 2');

INSERT INTO "Photo"(productid, url, description)
VALUES (2, concat('http://www.hosting/pl/', MD5(random()::text)), 'Photo 3');

INSERT INTO "Photo"(productid, url, description)
VALUES (3, concat('http://www.hosting/pl/', MD5(random()::text)), 'Photo 1');

INSERT INTO "Photo"(productid, url, description)
VALUES (4, concat('http://www.hosting/pl/', MD5(random()::text)), 'Photo 1');

INSERT INTO "Photo"(productid, url, description)
VALUES (4, concat('http://www.hosting/pl/', MD5(random()::text)), '');

INSERT INTO "Photo"(productid, url, description)
VALUES (5, concat('http://www.hosting/pl/', MD5(random()::text)), '');

INSERT INTO "Photo"(productid, url, description)
VALUES (5, concat('http://www.hosting/pl/', MD5(random()::text)), 'Test photo');

INSERT INTO "Photo"(productid, url, description)
VALUES (7, concat('http://www.hosting/pl/', MD5(random()::text)), 'JPG');

INSERT INTO "Photo"(productid, url, description)
VALUES (8, concat('http://www.hosting/pl/', MD5(random()::text)), 'PNG');

INSERT INTO "Photo"(productid, url, description)
VALUES (9, concat('http://www.hosting/pl/', MD5(random()::text)), '');

INSERT INTO "Photo"(productid, url, description)
VALUES (10, concat('http://www.hosting/pl/', MD5(random()::text)), 'Marynarka');

/* Order */
ALTER SEQUENCE "Order_id_seq" RESTART WITH 1;

INSERT INTO "Order"(customerid, status, date)
VALUES (1, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (1, 'PAID', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (1, 'PAID', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (2, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (2, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (3, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (3, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (3, 'PAID', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (3, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (4, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (5, 'PAID', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (5, 'PAID', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (6, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (6, 'CREATED', CURRENT_DATE);

INSERT INTO "Order"(customerid, status, date)
VALUES (6, 'CREATED', CURRENT_DATE);

/* Payment */
INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (1, 440, '3rd party', 'PayU');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (2, 1440, '3rd party', 'PayPal');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (3, 340, 'Bank', 'Alior Bank');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (4, 250, '3rd party', 'PayU');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (5, 100, '3rd party', 'PayPal');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (6, 155, '3rd party', 'PayPal');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (7, 439, '3rd party', 'PayU');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (8, 120, '3rd party', 'PayU');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (9, 990, '3rd party', 'PayU');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (10, 790, 'Bank', 'PKO BP');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (11, 440, '3rd party', 'PayPal');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (12, 320, '3rd party', 'PayPal');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (13, 670, '3rd party', 'PayU');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (14, 450, 'Bank', 'PKO BP');

INSERT INTO "Payment"(orderid, value, type, provider)
VALUES (15, 1000, '3rd party', 'PayPal');

/* ProductOrderQuantity */
INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (1, 1, 1, 300, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (1, 2, 3, 300, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (1, 3, 1, 50, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (2, 1, 1, 100, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (2, 9, 1, 200, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (3, 9, 1, 300, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (4, 7, 2, 700, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (5, 6, 1, 400, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (5, 8, 1, 300, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (6, 5, 3, 350, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (7, 6, 1, 400, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (7, 4, 2, 100, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (7, 3, 1, 100, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (7, 3, 3, 120, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (1, 3, 1, 90, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (8, 1, 1, 220, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (8, 2, 1, 320, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (9, 9, 1, 300, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (10, 7, 1, 100, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (11, 6, 1, 1100, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (11, 8, 6, 1400, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (12, 4, 1, 99, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (13, 5, 1, 220, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (14, 6, 3, 300, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (14, 2, 1, 100, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (14, 8, 2, 500, 0);

INSERT INTO public."ProductOrderQuantity"(orderid, productid, quantity, price, discountinpercent)
VALUES (15, 7, 5, 100, 10);



