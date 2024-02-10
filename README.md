# Using data build tool to process the entire American Community Survey data

Using the Census Bureau's American Community Survey (ACS) data with `dbt` (data build tool) for creating compressed parquet files for exploratory data analysis and downstream applications.

## Examples

Examples are in the `/examples` directory:

## Usage 

To download and process the ACS data, you can run: 

```
dbt run --vars '{"public_use_microdata_sample_url": "https://www2.census.gov/programs-surveys/acs/data/pums/2022/1-Year/", "output_path": "~/data/american_community_survey"}'
```

You can change the URL to retrieve a different year (or 5-Year versus 1-Year sample) appropriately, or choose a different output path.

You can see the size of the csv output:

```
❯ du -sh ~/data/american_community_survey/2022
6.4G    /Users/me/data/american_community_survey/2022
```

And the compressed representation size:


It takes ~ 49 seconds on a Macbook Pro with an M3 processor to download and extract 1 year's worth of public use microdata sample (PUMS) data from the ACS, and 5 minutes to compress the CSV files into parquet files for exploratory data analysis and mapping.

## Requirements

To use this, you will need to install the following:
1. The `dbt-duckdb` adapter, which can be installed with:
```
pip install dbt-duckdb
```
2. BeautifulSoup, for parsing the URLs for downloading individual American Community Survey data files:
```
pip install bs4
```
3. Pandas for data processing:
```
pip install pandas
```
4. The duckdb command line application, which is useful for debugging:
```
brew install duckdb
```


### Log for reproducing ChatGPT session

https://chat.openai.com/share/2018eb46-c896-4418-bc12-5c831a87bba6

## Contact

I'd love to hear what uses you have for this data! Reach me on [Twitter](https://twitter.com/thejaan) or [e-mail](mailto:jaan.li@jaan.li).
