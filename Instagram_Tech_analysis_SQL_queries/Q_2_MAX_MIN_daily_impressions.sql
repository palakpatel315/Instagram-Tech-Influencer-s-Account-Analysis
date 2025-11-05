SELECT post_type,
       MAX(impressions) AS highest_daily_impression,
       MIN(impressions) AS lowest_daily_impression
FROM fact_content
GROUP BY post_type;
