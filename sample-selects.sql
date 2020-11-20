/* Select customer by id */
SELECT * FROM "Customer" AS customer
WHERE customer.id = 2;

/* Select customer by id */
SELECT * FROM "Employee" AS employee
WHERE employee.id = 2;

/* Select product by id */
SELECT * FROM "Product" AS product
WHERE product.id = 3;

/* Select chief of given employee by id */
SELECT chief.* FROM "Employee" AS employee
INNER JOIN "Employee" AS chief
ON employee.chiefId = chief.id
WHERE employee.id = 5;

/* Select subordinates for given employee */
SELECT employee.* FROM "Employee" AS chief
INNER JOIN "Employee" AS employee
ON chief.id = employee.chiefId
WHERE chief.id = 2;

/* Select products for category by category name */
SELECT product.* FROM "Product" AS product
INNER JOIN "Category" AS category
ON product.categoryId = category.id
WHERE category.name = 'Buty';

/* Select products managed by employee */
SELECT product.* FROM "Product" AS product
INNER JOIN "Employee" AS employee
ON employee.id = product.managedBy
WHERE employee.id = 4;

/* Select customer orders */
SELECT orders.* FROM "Customer" AS customer
INNER JOIN "Order" AS orders
ON customer.id = orders.customerId
WHERE customer.id = 3;

/* Select customer payments */
SELECT payment.* FROM "Customer" AS customer
INNER JOIN "Order" AS orders
ON customer.id = orders.customerId
INNER JOIN "Payment" AS payment
ON payment.orderId = orders.id
WHERE customer.id = 3;

/* Select order products with quantity and price */
SELECT product.name, productOrderQuantity.quantity, productOrderQuantity.price FROM "Order" AS orders
INNER JOIN "ProductOrderQuantity" AS productOrderQuantity
ON orders.id = productOrderQuantity.orderId
INNER JOIN "Product" AS product
ON product.id = productOrderQuantity.productId
WHERE orders.id = 2;

