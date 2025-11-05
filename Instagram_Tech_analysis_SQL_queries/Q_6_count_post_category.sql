-- Q_6. Create a report that displays the unique post_category names alongside their respective counts for each month. The output should have three columns: 
-- • month_name
-- • post_category_names 
-- • post_category_count


SELECT 
    dd.month_name AS month_name,
    GROUP_CONCAT(DISTINCT fc.post_category ORDER BY fc.post_category ASC) AS post_category_names,
    COUNT(DISTINCT fc.post_category) AS post_category_count
FROM fact_content fc
JOIN dim_dates dd ON fc.date = dd.date
GROUP BY dd.month_name
ORDER BY FIELD(dd.month_name, 'January', 'February', 'March', 'April', 'May', 'June', 
                                     'July', 'August', 'September', 'October', 'November', 'December');
