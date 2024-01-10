-- 1. Выбрать все заказы из стран France, Austria, Spain
SELECT *
FROM Orders
WHERE ship_country IN ('France', 'Austria', 'Spain');

-- 2. Выбрать все заказы, отсортировать по required_date (по убыванию) и отсортировать по дате отгрузке (по возрастанию)
SELECT *
FROM Orders
ORDER BY required_date DESC, shipped_date ASC;

-- 3. Выбрать минимальное кол-во единиц товара среди тех продуктов, которых в продаже более 30 единиц.
SELECT MIN(units_in_stock) 
FROM Products
WHERE units_in_stock > 30;

-- 4. Выбрать максимальное кол-во единиц товара среди тех продуктов, которых в продаже более 30 единиц.
SELECT MAX(units_in_stock) 
FROM Products
WHERE units_in_stock > 30;

-- 5. Найти среднее значение дней уходящих на доставку с даты формирования заказа в USA
SELECT AVG(required_date - shipped_date) 
FROM Orders
WHERE ship_country = 'USA';

-- 6. Найти сумму, на которую имеется товаров (кол-во * цену) причём таких, которые планируется продавать и в будущем (см. на поле discontinued)
SELECT SUM(units_in_stock * unit_price) 
FROM Products
WHERE discontinued = 1;

