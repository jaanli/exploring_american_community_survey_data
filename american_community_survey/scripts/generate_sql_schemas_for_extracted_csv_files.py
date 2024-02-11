import pandas as pd
import duckdb
import sys
import os

# Check if a command-line argument is provided
if len(sys.argv) < 2:
    print("Usage: python script.py <parquet_database_path>")
    sys.exit(1)

parquet_database_path = sys.argv[1]

# Connect to DuckDB using the provided database path
conn = duckdb.connect(database=":memory:", read_only=False)
# Assuming 'list_public_use_microdata_sample_urls' is a table with CSV paths
query = f"SELECT * FROM read_parquet('{parquet_database_path}')"
csv_paths = pd.read_sql_query(query, conn)

for index, row in csv_paths.iterrows():
    csv_path = row["csv_path"]
    csv_name = os.path.basename(csv_path).replace(".csv", "")

    # Construct the SQL model content directly using Python string formatting
    sql_content = f"""{{{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}}}
SELECT * FROM '{csv_path}'
"""

    # Define the directory where the SQL files will be saved
    models_dir = "models/public_use_microdata_sample/generated"
    if not os.path.exists(models_dir):
        os.makedirs(models_dir)

    # Write the constructed SQL to a file
    with open(f"{models_dir}/{csv_name}.sql", "w") as f:
        f.write(sql_content)
