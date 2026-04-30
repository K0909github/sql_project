-- 1) Total sales per customer -- 顧客別売上のクエリ見出し
SELECT c.name, SUM(o.amount) AS total_sales -- 顧客名と売上合計を取得
FROM customers c -- customersテーブルをcとして参照
JOIN orders o ON c.customer_id = o.customer_id -- 注文テーブルを顧客IDで結合
GROUP BY c.name -- 顧客名で集計
ORDER BY total_sales DESC; -- 売上合計の降順に並べ替え

-- 2) Sales by country -- 国別売上のクエリ見出し
SELECT c.country, SUM(o.amount) AS total_sales -- 国名と売上合計を取得
FROM customers c -- customersテーブルをcとして参照
JOIN orders o ON c.customer_id = o.customer_id -- 注文テーブルを顧客IDで結合
GROUP BY c.country -- 国名で集計
ORDER BY total_sales DESC; -- 売上合計の降順に並べ替え

-- 3) Top 2 customers by sales -- 売上上位2人のクエリ見出し
SELECT c.name, SUM(o.amount) AS total_sales -- 顧客名と売上合計を取得
FROM customers c -- customersテーブルをcとして参照
JOIN orders o ON c.customer_id = o.customer_id -- 注文テーブルを顧客IDで結合
GROUP BY c.name -- 顧客名で集計
ORDER BY total_sales DESC -- 売上合計の降順に並べ替え
LIMIT 2; -- 上位2件に制限