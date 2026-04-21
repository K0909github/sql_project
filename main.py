import os

import psycopg2


def get_connection():
    return psycopg2.connect(
        dbname=os.getenv("PGDATABASE", "testdb"),
        user=os.getenv("PGUSER", "postgres"),
        password=os.getenv("PGPASSWORD", "password"),
        host=os.getenv("PGHOST", "localhost"),
        port=os.getenv("PGPORT", "5432"),
    )


def main():
    query = """
    SELECT c.name, SUM(o.amount) AS total_sales
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.name
    ORDER BY total_sales DESC;
    """

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(query)
            rows = cur.fetchall()

    print("Customer | Total Sales")
    print("----------------------")
    for name, total_sales in rows:
        print(f"{name:8} | {total_sales}")


if __name__ == "__main__":
    main()