-- Q_3. Filter all the posts that were published on a weekend in the month of March and April and export them to a separate csv file.


SELECT fc.*
FROM fact_content fc
JOIN dim_dates dd ON fc.date = dd.date
WHERE dd.weekday_or_weekend = 'Weekend'
  AND dd.month_name IN ('March', 'April');
