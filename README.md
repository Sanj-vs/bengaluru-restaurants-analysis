# bengaluru-restaurants-analysis
SQL and Excel analysis of 88 Bengaluru areas: restaurant count vs average rating
## Data
88 areas, 5 columns: area name, restaurant count, latitude, longitude, average rating. Each row is one area. No blanks and no duplicates were found.
Latitude and longitude look unreliable for about 35 of 88 areas, so I did not use them.

## Tools
SQL Server (SSMS) and Excel (pivot table and chart) and Python (pandas, matplotlib)

## Key findings
Note: all findings are "in this dataset". The counts look low compared with real life, so this may be a sample.

1. **Big areas:** 18 areas have over 1,000 restaurants, with ratings from 4.1 to 4.6. West Bangalore is the largest (5,124 restaurants, 4.6).
2. **Middle areas:** 47 areas have 100 to 1,000 restaurants, with ratings from 3.6 to 4.1.
3. **Small areas:** 23 areas have under 100 restaurants, with ratings from 2.8 to 3.6 (not counting BTM). These ratings are less reliable because very few restaurants are rated.
4. **Pattern:** areas with more restaurants tend to have higher ratings.
5. **Outlier:** BTM has a rating of 0 with 6 restaurants. This probably means "no ratings yet", so I left it out of rating calculations.
6. **Concentration:** the top 10 areas hold about 45% of all restaurants (23,301 of 51,644).


## Suggestion
HSR, Koramangala 5th Block, and JP Nagar have the lowest ratings (2.8 to 2.9) with very few restaurants listed. They could be checked first for offers and advertising, after getting more complete data.

## Chart
   ![Top 10 areas by count](top%2010%20analysis%20of%20areas.png)
   ### Python (matplotlib)
![Top 10 areas by count, Python](python_top10_chart1.png)


## Files
- `analysis_queries.sql`: SQL queries used
- the CSV: dataset
