-- Q_1. How many unique post types are found in the 'fact_content' table?

SELECT COUNT(DISTINCT post_type) AS unique_post_types
FROM fact_content;
