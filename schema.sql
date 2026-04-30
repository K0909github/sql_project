CREATE TABLE customers ( -- customersテーブルの作成を開始
    customer_id SERIAL PRIMARY KEY, -- 顧客IDを自動採番して主キーに設定
    name TEXT NOT NULL, -- 顧客名を必須の文字列で定義
    country TEXT NOT NULL -- 国名を必須の文字列で定義
); -- customersテーブル定義を終了

CREATE TABLE orders ( -- ordersテーブルの作成を開始
    order_id SERIAL PRIMARY KEY, -- 注文IDを自動採番して主キーに設定
    customer_id INT NOT NULL, -- 顧客IDを必須の整数で定義
    order_date DATE NOT NULL, -- 注文日を必須の日付で定義
    amount INT NOT NULL, -- 金額を必須の整数で定義
    CONSTRAINT fk_customer -- 外部キー制約名を指定
        FOREIGN KEY (customer_id) -- customer_idを外部キーに設定
        REFERENCES customers(customer_id) -- customersテーブルの主キーを参照
); -- ordersテーブル定義を終了