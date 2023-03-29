DROP DATABASE IF EXISTS hw2;
CREATE DATABASE hw2;
USE hw2;


CREATE TABLE sales(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	order_date DATE NOT NULL, 
    count_product INT NOT NULL
);


-- наполнение
INSERT INTO sales (order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341),;	

-- задание  2
SELECT id AS id_заказа,
	CASE 
		WHEN count_product < 100 THEN 'Мвленький заказ '
		WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
		ELSE 'Большой заказ'
	END AS 'Тип заказа'
	FROM sales;




   
   CREATE TABLE orders(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	employee_id VARCHAR(45) NOT NULL, 
    amount FLOAT(2) NOT NULL,
    order_status VARCHAR(45) NOT NULL
); 


INSERT INTO orders (employee_id, amount, order_status)
VALUES 
('e03', 15.00, "OPEN"),
('e01', 25.00, "OPEN"),
('e05', 100.70, "CLOSED"),
('e02', 22.18, "OPEN"),
('e04', 9.50, "CANCELLED");



SELECT id AS id_заказа,
	CASE 
		WHEN order_status = "OPEN" THEN 'Order is in open state '
		WHEN order_status = "CLOSED" THEN 'Order is closed'
		ELSE 'Order is cancelled'
	END AS 'full_order_status'
	FROM orders;
	
