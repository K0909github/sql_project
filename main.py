import os  # 環境変数を扱うための標準ライブラリ

import psycopg2  # PostgreSQLに接続するためのライブラリ


def get_connection():  # DB接続を作る関数を定義
    return psycopg2.connect(  # psycopg2で接続を作成
        dbname=os.getenv("PGDATABASE", "testdb"),  # DB名を環境変数から取得
        user=os.getenv("PGUSER", "postgres"),  # ユーザー名を環境変数から取得
        password=os.getenv("PGPASSWORD", "password"),  # パスワードを環境変数から取得
        host=os.getenv("PGHOST", "localhost"),  # ホスト名を環境変数から取得
        port=os.getenv("PGPORT", "5432"),  # ポート番号を環境変数から取得
    )  # 接続設定の終わり


def main():  # メイン処理を定義
    query = """  # 実行するSQLクエリを定義
    SELECT c.name, SUM(o.amount) AS total_sales -- 顧客名と売上合計を取得
    FROM customers c -- customersテーブルをcとして参照
    JOIN orders o ON c.customer_id = o.customer_id -- 注文テーブルを顧客IDで結合
    GROUP BY c.name -- 顧客名で集計
    ORDER BY total_sales DESC; -- 売上合計の降順に並べ替え
    """  # SQLクエリ文字列の終わり

    with get_connection() as conn:  # DB接続をコンテキストで開く
        with conn.cursor() as cur:  # カーソルを取得
            cur.execute(query)  # SQLを実行
            rows = cur.fetchall()  # 全結果を取得

    print("Customer | Total Sales")  # 出力の見出しを表示
    print("----------------------")  # 区切り線を表示
    for name, total_sales in rows:  # 結果行を1件ずつ処理
        print(f"{name:8} | {total_sales}")  # 顧客名と売上合計を整形して表示


if __name__ == "__main__":  # 直接実行時だけmainを呼ぶ
    main()  # メイン処理を実行