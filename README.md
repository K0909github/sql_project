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

## Setup
1. Create a PostgreSQL database (example: `testdb`)
2. Run SQL files in order:
   1. `schema.sql`
   2. `insert.sql`
   3. `analysis.sql` (optional, for manual checks)
3. Install Python dependency:
   - `pip install psycopg2-binary`
4. Set environment variables (PowerShell example):
   - `$env:PGDATABASE="testdb"`
   - `$env:PGUSER="postgres"`
   - `$env:PGPASSWORD="your_password"`
   - `$env:PGHOST="localhost"`
   - `$env:PGPORT="5432"`
5. Run:
   - `python main.py`

## Example Output
`main.py` prints total sales per customer in descending order.
