INSERT INTO customers (name, country) VALUES -- customersに名前と国を挿入
('Alice', 'USA'), -- AliceをUSAとして追加
('Bob', 'Japan'), -- BobをJapanとして追加
('Charlie', 'USA'); -- CharlieをUSAとして追加

INSERT INTO orders (customer_id, order_date, amount) VALUES -- ordersに注文データを挿入
(1, '2024-01-01', 100), -- 顧客1の2024-01-01の注文
(1, '2024-01-05', 150), -- 顧客1の2024-01-05の注文
(2, '2024-01-03', 200), -- 顧客2の2024-01-03の注文
(3, '2024-01-04', 50); -- 顧客3の2024-01-04の注文