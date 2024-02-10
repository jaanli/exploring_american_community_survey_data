import pandas as pd
import requests
import zipfile
import io
import os
from tqdm import tqdm

def model(dbt, session):
    # Correctly access the variable from dbt_project.yml
    base_url = dbt.config.get('public_use_microdata_sample_url')  # Correct method to access the variable

    # Assuming 'list_public_use_microdata_sample_urls' is the name of your table or view containing URLs
    query = "SELECT * FROM list_public_use_microdata_sample_urls"
    result = session.execute(query).fetchall()
    columns = [desc[0] for desc in session.description]  # Get column names from the query result
    url_df = pd.DataFrame(result, columns=columns)

    extracted_files = []

    # The base directory for data storage is now correctly derived from the base_url variable
    base_path = os.path.expanduser(dbt.config.get('output_path'))  # Correct method to access the variable
    base_dir = os.path.join(base_path, f'{base_url.rstrip("/").split("/")[-2]}/{base_url.rstrip("/").split("/")[-1]}')

    # debug 
    # url_df = url_df[:10]

    for index, row in tqdm(url_df.iterrows(), total=url_df.shape[0]):
        url = row['URL']
        # Extract the archive name from the URL
        archive_name = url.split('/')[-1].split('.')[0]  # e.g., 'csv_hak'
        # Construct a directory path for this archive
        archive_dir = os.path.join(base_dir, archive_name)
        # Create the directory if it doesn't exist
        os.makedirs(archive_dir, exist_ok=True)

        # Download and unzip the archive
        r = requests.get(url)
        z = zipfile.ZipFile(io.BytesIO(r.content))
        z.extractall(archive_dir)

        # Iterate through the zip file's contents to get the file names
        for file_info in z.infolist():
            if file_info.filename.endswith('.csv'):
                # Construct the full path for each extracted CSV file and add it to the list
                file_path = os.path.join(archive_dir, file_info.filename)
                extracted_files.append(file_path)

    # Convert the list of extracted file paths to a DataFrame
    paths_df = pd.DataFrame(extracted_files, columns=['csv_path'])

    # Return the DataFrame with paths to the extracted CSV files
    return paths_df
