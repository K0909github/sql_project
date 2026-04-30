# SQL Sales Analysis Project

## Overview
This project demonstrates basic SQL and RDBMS skills using PostgreSQL.
It includes:
- Schema design
- Data insertion
- Analytical SQL queries
- Python integration for running SQL from code

## Project Structure
- `schema.sql`: Creates tables (`customers`, `orders`)
- `insert.sql`: Inserts sample data
- `analysis.sql`: Analysis queries
- `main.py`: Connects to PostgreSQL and runs a query

## Skills Demonstrated
- SQL: `JOIN`, `GROUP BY`, `SUM`, `ORDER BY`, `LIMIT`
- RDBMS: PostgreSQL
- Python: `psycopg2` database connection and query execution

## Setup (Docker)
1. Start PostgreSQL with Docker Compose:
   - `docker compose up -d db`
2. Run SQL files in order:
   1. `schema.sql`
      - `psql -h localhost -U postgres -d testdb -f schema.sql`
   2. `insert.sql`
      - `psql -h localhost -U postgres -d testdb -f insert.sql`
   3. `analysis.sql` (optional, for manual checks)
      - `psql -h localhost -U postgres -d testdb -f analysis.sql`
3. Run the Python app in Docker:
   - `docker compose run --rm app`

## Example Output
`main.py` prints total sales per customer in descending order.

---

## 日本語版

### 概要
このプロジェクトは、PostgreSQL を使って SQL と RDBMS の基本スキルを示すサンプルです。  
以下を含みます。
- スキーマ設計
- データ投入
- 分析用 SQL クエリ
- Python からの SQL 実行

### プロジェクト構成
- `schema.sql`: テーブル作成（`customers`, `orders`）
- `insert.sql`: サンプルデータ投入
- `analysis.sql`: 分析クエリ
- `main.py`: PostgreSQL に接続してクエリを実行

### このプロジェクトで使うスキル
- SQL: `JOIN`, `GROUP BY`, `SUM`, `ORDER BY`, `LIMIT`
- RDBMS: PostgreSQL
- Python: `psycopg2` によるDB接続とクエリ実行

### セットアップ（Docker）
1. Docker Compose で PostgreSQL を起動
   - `docker compose up -d db`
2. 以下の順で SQL ファイルを実行
   1. `schema.sql`
      - `psql -h localhost -U postgres -d testdb -f schema.sql`
   2. `insert.sql`
      - `psql -h localhost -U postgres -d testdb -f insert.sql`
   3. `analysis.sql`（手動確認用、任意）
      - `psql -h localhost -U postgres -d testdb -f analysis.sql`
3. Python アプリを Docker で実行
   - `docker compose run --rm app`

### 実行結果
`main.py` は、顧客ごとの売上合計を降順で表示します。
