# Using data build tool to process the entire American Community Survey individual-level and household data in 5 minutes

Using the Census Bureau's American Community Survey (ACS) data with `dbt` (data build tool) for creating compressed parquet files for exploratory data analysis and downstream applications.

## Examples

Examples are in the `/examples` directory:

## Usage for 2022 ACS Public Use Microdata Sample (PUMS) Data

To retrieve the list of URLs from the Census Bureau's server and download and extract the archives for all of the 50 states' PUMS files, run the following:
```
cd american_community_survey
dbt run --exclude "public_use_microdata_sample.generated+" --vars '{"public_use_microdata_sample_url": "https://www2.census.gov/programs-surveys/acs/data/pums/2022/1-Year/", "public_use_microdata_sample_data_dictionary_url": "https://www2.census.gov/programs-surveys/acs/tech_docs/pums/data_dict/PUMS_Data_Dictionary_2022.csv", "output_path": "~/data/american_community_survey"}'
```

Then generate the SQL commands needed to map every state's individual people or housing unit variables to the easier to use (and read) names:

```
python scripts/generate_sql_data_dictionary_mapping_for_extracted_csv_files.py \
  ~/data/american_community_survey/public_use_microdata_sample_csv_paths.parquet \
  ~/data/american_community_survey/PUMS_Data_Dictionary_2022.json
```

Then execute these generated SQL queries using 1 thread (you can adjust this number to be higher depending on the available processor cores on your system):
```
dbt run --select "public_use_microdata_sample.generated+" --vars '{"public_use_microdata_sample_url": "https://www2.census.gov/programs-surveys/acs/data/pums/2022/1-Year/", "public_use_microdata_sample_data_dictionary_url": "https://www2.census.gov/programs-surveys/acs/tech_docs/pums/data_dict/PUMS_Data_Dictionary_2022.csv", "output_path": "~/data/american_community_survey"}' --threads 1
```

Inspect the output folder to see what has been created in the `output_path` specified in the previous command:
```
❯ tree -hF -I '*.pdf' ~/data/american_community_survey                
[ 224]  /Users/me/data/american_community_survey/
├── [ 128]  2022/
│   └── [3.4K]  1-Year/
│       ├── [ 128]  csv_hak/
│       │   └── [2.1M]  psam_h02.csv
│       ├── [ 128]  csv_hal/
│       │   └── [ 15M]  psam_h01.csv
│       ├── [ 128]  csv_har/
│       │   └── [9.0M]  psam_h05.csv
│       ├── [ 128]  csv_haz/
│       │   └── [ 20M]  psam_h04.csv
│       ├── [ 128]  csv_hca/
│       │   └── [ 95M]  psam_h06.csv
│       ├── [ 128]  csv_hco/
│       │   └── [ 17M]  psam_h08.csv
│       ├── [ 128]  csv_hct/
│       │   └── [ 10M]  psam_h09.csv
│       ├── [ 128]  csv_hdc/
│       │   └── [2.3M]  psam_h11.csv
│       ├── [ 128]  csv_hde/
│       │   └── [2.9M]  psam_h10.csv
│       ├── [ 128]  csv_hfl/
│       │   └── [ 63M]  psam_h12.csv
│       ├── [ 128]  csv_hga/
│       │   └── [ 29M]  psam_h13.csv
│       ├── [ 128]  csv_hhi/
│       │   └── [3.7M]  psam_h15.csv
│       ├── [ 128]  csv_hia/
│       │   └── [9.4M]  psam_h19.csv
│       ├── [ 128]  csv_hid/
│       │   └── [5.2M]  psam_h16.csv
│       ├── [ 128]  csv_hil/
│       │   └── [ 35M]  psam_h17.csv
│       ├── [ 128]  csv_hin/
│       │   └── [ 19M]  psam_h18.csv
│       ├── [ 128]  csv_hks/
│       │   └── [8.3M]  psam_h20.csv
│       ├── [ 128]  csv_hky/
│       │   └── [ 13M]  psam_h21.csv
│       ├── [ 128]  csv_hla/
│       │   └── [ 13M]  psam_h22.csv
│       ├── [ 128]  csv_hma/
│       │   └── [ 20M]  psam_h25.csv
│       ├── [ 128]  csv_hmd/
│       │   └── [ 16M]  psam_h24.csv
│       ├── [ 128]  csv_hme/
│       │   └── [4.8M]  psam_h23.csv
│       ├── [ 128]  csv_hmi/
│       │   └── [ 29M]  psam_h26.csv
│       ├── [ 128]  csv_hmn/
│       │   └── [ 16M]  psam_h27.csv
│       ├── [ 128]  csv_hmo/
│       │   └── [ 18M]  psam_h29.csv
│       ├── [ 128]  csv_hms/
│       │   └── [8.6M]  psam_h28.csv
│       ├── [ 128]  csv_hmt/
│       │   └── [3.3M]  psam_h30.csv
│       ├── [ 128]  csv_hnc/
│       │   └── [ 32M]  psam_h37.csv
│       ├── [ 128]  csv_hnd/
│       │   └── [2.4M]  psam_h38.csv
│       ├── [ 128]  csv_hne/
│       │   └── [5.5M]  psam_h31.csv
│       ├── [ 128]  csv_hnh/
│       │   └── [4.1M]  psam_h33.csv
│       ├── [ 128]  csv_hnj/
│       │   └── [ 24M]  psam_h34.csv
│       ├── [ 128]  csv_hnm/
│       │   └── [6.0M]  psam_h35.csv
│       ├── [ 128]  csv_hnv/
│       │   └── [8.2M]  psam_h32.csv
│       ├── [ 128]  csv_hny/
│       │   └── [ 56M]  psam_h36.csv
│       ├── [ 128]  csv_hoh/
│       │   └── [ 34M]  psam_h39.csv
│       ├── [ 128]  csv_hok/
│       │   └── [ 11M]  psam_h40.csv
│       ├── [ 128]  csv_hor/
│       │   └── [ 12M]  psam_h41.csv
│       ├── [ 128]  csv_hpa/
│       │   └── [ 38M]  psam_h42.csv
│       ├── [ 128]  csv_hpr/
│       │   └── [9.8M]  psam_h72.csv
│       ├── [ 128]  csv_hri/
│       │   └── [3.0M]  psam_h44.csv
│       ├── [ 128]  csv_hsc/
│       │   └── [ 16M]  psam_h45.csv
│       ├── [ 128]  csv_hsd/
│       │   └── [2.6M]  psam_h46.csv
│       ├── [ 128]  csv_htn/
│       │   └── [ 20M]  psam_h47.csv
│       ├── [ 128]  csv_htx/
│       │   └── [ 76M]  psam_h48.csv
│       ├── [ 160]  csv_hus/
│       │   ├── [468M]  psam_husa.csv
│       │   └── [452M]  psam_husb.csv
│       ├── [ 128]  csv_hut/
│       │   └── [7.9M]  psam_h49.csv
│       ├── [ 128]  csv_hva/
│       │   └── [ 24M]  psam_h51.csv
│       ├── [ 128]  csv_hvt/
│       │   └── [2.2M]  psam_h50.csv
│       ├── [ 128]  csv_hwa/
│       │   └── [ 21M]  psam_h53.csv
│       ├── [ 128]  csv_hwi/
│       │   └── [ 18M]  psam_h55.csv
│       ├── [ 128]  csv_hwv/
│       │   └── [5.5M]  psam_h54.csv
│       ├── [ 128]  csv_hwy/
│       │   └── [1.7M]  psam_h56.csv
│       ├── [ 128]  csv_pak/
│       │   └── [4.6M]  psam_p02.csv
│       ├── [ 128]  csv_pal/
│       │   └── [ 34M]  psam_p01.csv
│       ├── [ 128]  csv_par/
│       │   └── [ 21M]  psam_p05.csv
│       ├── [ 128]  csv_paz/
│       │   └── [ 50M]  psam_p04.csv
│       ├── [ 128]  csv_pca/
│       │   └── [263M]  psam_p06.csv
│       ├── [ 128]  csv_pco/
│       │   └── [ 40M]  psam_p08.csv
│       ├── [ 128]  csv_pct/
│       │   └── [ 25M]  psam_p09.csv
│       ├── [ 128]  csv_pdc/
│       │   └── [4.6M]  psam_p11.csv
│       ├── [ 128]  csv_pde/
│       │   └── [6.5M]  psam_p10.csv
│       ├── [ 128]  csv_pfl/
│       │   └── [147M]  psam_p12.csv
│       ├── [ 128]  csv_pga/
│       │   └── [ 73M]  psam_p13.csv
│       ├── [ 128]  csv_phi/
│       │   └── [ 10M]  psam_p15.csv
│       ├── [ 128]  csv_pia/
│       │   └── [ 22M]  psam_p19.csv
│       ├── [ 128]  csv_pid/
│       │   └── [ 13M]  psam_p16.csv
│       ├── [ 128]  csv_pil/
│       │   └── [ 86M]  psam_p17.csv
│       ├── [ 128]  csv_pin/
│       │   └── [ 47M]  psam_p18.csv
│       ├── [ 128]  csv_pks/
│       │   └── [ 20M]  psam_p20.csv
│       ├── [ 128]  csv_pky/
│       │   └── [ 31M]  psam_p21.csv
│       ├── [ 128]  csv_pla/
│       │   └── [ 30M]  psam_p22.csv
│       ├── [ 128]  csv_pma/
│       │   └── [ 49M]  psam_p25.csv
│       ├── [ 128]  csv_pmd/
│       │   └── [ 42M]  psam_p24.csv
│       ├── [ 128]  csv_pme/
│       │   └── [9.7M]  psam_p23.csv
│       ├── [ 128]  csv_pmi/
│       │   └── [ 68M]  psam_p26.csv
│       ├── [ 128]  csv_pmn/
│       │   └── [ 39M]  psam_p27.csv
│       ├── [ 128]  csv_pmo/
│       │   └── [ 43M]  psam_p29.csv
│       ├── [ 128]  csv_pms/
│       │   └── [ 20M]  psam_p28.csv
│       ├── [ 128]  csv_pmt/
│       │   └── [7.4M]  psam_p30.csv
│       ├── [ 128]  csv_pnc/
│       │   └── [ 73M]  psam_p37.csv
│       ├── [ 128]  csv_pnd/
│       │   └── [5.4M]  psam_p38.csv
│       ├── [ 128]  csv_pne/
│       │   └── [ 13M]  psam_p31.csv
│       ├── [ 128]  csv_pnh/
│       │   └── [9.5M]  psam_p33.csv
│       ├── [ 128]  csv_pnj/
│       │   └── [ 63M]  psam_p34.csv
│       ├── [ 128]  csv_pnm/
│       │   └── [ 13M]  psam_p35.csv
│       ├── [ 128]  csv_pnv/
│       │   └── [ 21M]  psam_p32.csv
│       ├── [ 128]  csv_pny/
│       │   └── [136M]  psam_p36.csv
│       ├── [ 128]  csv_poh/
│       │   └── [ 81M]  psam_p39.csv
│       ├── [ 128]  csv_pok/
│       │   └── [ 26M]  psam_p40.csv
│       ├── [ 128]  csv_por/
│       │   └── [ 29M]  psam_p41.csv
│       ├── [ 128]  csv_ppa/
│       │   └── [ 88M]  psam_p42.csv
│       ├── [ 128]  csv_ppr/
│       │   └── [ 20M]  psam_p72.csv
│       ├── [ 128]  csv_pri/
│       │   └── [7.0M]  psam_p44.csv
│       ├── [ 128]  csv_psc/
│       │   └── [ 36M]  psam_p45.csv
│       ├── [ 128]  csv_psd/
│       │   └── [6.2M]  psam_p46.csv
│       ├── [ 128]  csv_ptn/
│       │   └── [ 48M]  psam_p47.csv
│       ├── [ 128]  csv_ptx/
│       │   └── [196M]  psam_p48.csv
│       ├── [ 160]  csv_pus/
│       │   ├── [1.1G]  psam_pusa.csv
│       │   └── [1.1G]  psam_pusb.csv
│       ├── [ 128]  csv_put/
│       │   └── [ 24M]  psam_p49.csv
│       ├── [ 128]  csv_pva/
│       │   └── [ 60M]  psam_p51.csv
│       ├── [ 128]  csv_pvt/
│       │   └── [4.6M]  psam_p50.csv
│       ├── [ 128]  csv_pwa/
│       │   └── [ 54M]  psam_p53.csv
│       ├── [ 128]  csv_pwi/
│       │   └── [ 41M]  psam_p55.csv
│       ├── [ 128]  csv_pwv/
│       │   └── [ 12M]  psam_p54.csv
│       └── [ 128]  csv_pwy/
│           └── [4.0M]  psam_p56.csv
├── [334K]  PUMS_Data_Dictionary_2022.json
├── [1.8K]  public_use_microdata_sample_csv_paths.parquet
├── [ 533]  public_use_microdata_sample_data_dictionary_path.parquet
└── [1.4K]  public_use_microdata_sample_urls.parquet

109 directories, 112 files
```

Next, 

You can change the URL to retrieve a different year (or 5-Year versus 1-Year sample) appropriately, or choose a different output path.

You can see the size of the csv output:

```
❯ du -sh ~/data/american_community_survey/2022
6.4G    /Users/me/data/american_community_survey/2022
```

And the compressed representation size:

```
du -hc ~/data/american_community_survey/*.parquet
...
3.0G    total
```

It takes ~ 30 seconds on a Macbook Pro with an M3 processor to download and extract 1 year's worth of public use microdata sample (PUMS) data from the ACS, and ~ 3 minutes to compress the CSV files into parquet files for exploratory data analysis and mapping.

## Requirements

Create virtual environment:
```
python3 -m venv .venv 
```

Install the requirements:
```
pip install -r requirements.txt
```

The `requirements.txt` file is generated by running:
```
pip-compile requirements.in
```


### Log for reproducing ChatGPT session

https://chat.openai.com/share/2018eb46-c896-4418-bc12-5c831a87bba6

## Contact

I'd love to hear what uses you have for this data! Reach me on [Twitter](https://twitter.com/thejaan) or [e-mail](mailto:jaan.li@jaan.li).
