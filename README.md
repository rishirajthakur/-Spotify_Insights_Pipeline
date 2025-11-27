# Spotify Playlist ETL & Analytics Project #

A real-world inspired data engineering and analytics project that extracts Spotify playlist data, transforms it into a structured format, loads it into SQL Server, and visualises insights in Power BI.

> This project demonstrates an end-to-end ETL workflow — from data extraction via Spotify API → transformation using Python → loading into SQL Server → visualisation in Power BI.

---

## Workflow

1. Extract (Python)
  *  Retrieved Spotify playlist data using Spotify Web API (via spotipy library).
  *  Collected metadata such as:
      - Track ID, Track Name, Artist
      - Album, Popularity, Duration
      - Release Date

2. Transform (Python)

 *  Cleaned and structured the extracted data.
 *  Converted timestamps into proper date formats.
 *  Handled duplicates and null values.
 *  Exported the processed data into CSV files for database loading.

3. Load (SQL - Microsoft SQL Server)

* Created a SQL table schema and inserted transformed data.
* Sample Data Cleaning & Updates.
* Alter column type for consistency


4. Analysis (SQL Queries)

* Some key queries used for insights:

```
-- Most Frequent Artists in Trending List
    SELECT artist, COUNT(*) AS total_songs
    FROM spotify_tracks
    GROUP BY artist
    ORDER BY total_songs DESC;
```

```
-- Distribution of Tracks by Release Year
    SELECT YEAR(release_date) AS release_year, COUNT(*) AS total_tracks
    FROM spotify_tracks
    GROUP BY YEAR(release_date)
    ORDER BY release_year DESC;
```

5. Visualise (Power BI)

* Built an interactive dashboard with:

   * KPIs: Total Tracks, Distinct Artists, Most Popular Song

* Charts:

  * Popularity distribution across songs
  * Most frequent artists in the dataset
  * Release year distribution

* Filters/Slicers: By artist, year, and popularity range
---

## Tech Stack

- Python: Data extraction & transformation (spotipy, pandas, numpy)

- SQL (MS SQL Server): Data loading, cleaning, querying

- Power BI: Interactive dashboard for business insights
---

## How to Run

* Clone the repository:

```
git clone https://github.com/your-username/Spotify_Insights_Pipeline.git 
```


* Install dependencies:

```
pip install -r requirements.txt
```


* Run the Python ETL script:

```
python spotify_project.py
```

* Run the queries in SQL_file.sql.

* Open Spotify_Dashboard.pbix to explore insights.
---

## Key Insights

- Identified the top 10 most popular songs.
- Found the most frequent artists in the playlist dataset.
- Analysed music release trends by year.
- Built a dynamic Power BI dashboard for interactive exploration.
---

## 🎯 Why This Project Matters

This project highlights end-to-end data skills:

- Data Engineering: ETL pipeline with Python & SQL
- Data Analysis: Writing complex queries for insights
- Data Visualisation: Storytelling with Power BI

It demonstrates the ability to handle real-world datasets, clean and transform data, perform analytics, and present results in a visually impactful way — making it an excellent addition to my resume and LinkedIn portfolio.

---

## Future Enhancements

* Automate extraction with Airflow / Prefect
* Store data in a data warehouse (Snowflake/BigQuery)
---

## Author

**Naman Sharma**
[LinkedIn](https://www.linkedin.com/in/naman-sharma-ds/)
