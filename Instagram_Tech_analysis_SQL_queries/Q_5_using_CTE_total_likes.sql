-- Q_5. Write a CTE that calculates the total number of 'likes’ for each 'post_category' during the month of 'July' and subsequently, arrange the 
--'post_category' values in descending order according to their total likes.

WITH july_likes AS (
    SELECT 
        fc.post_category AS post_category,
        SUM(fc.likes) AS total_likes
    FROM fact_content fc
    JOIN dim_dates dd ON fc.date = dd.date
    WHERE dd.month_name = 'July'
    GROUP BY fc.post_category
)
SELECT *
FROM july_likes
ORDER BY total_likes DESC;
