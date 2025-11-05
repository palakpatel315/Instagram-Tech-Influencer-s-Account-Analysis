SELECT fc.*
FROM fact_content fc
JOIN dim_dates dd ON fc.date = dd.date
WHERE dd.weekday_or_weekend = 'Weekend'
  AND dd.month_name IN ('March', 'April');