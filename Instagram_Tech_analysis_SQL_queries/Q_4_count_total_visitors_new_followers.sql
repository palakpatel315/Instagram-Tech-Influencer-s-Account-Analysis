-- Q_4. Create a report to get the statistics for the account. The final output includes the following fields:
-- • month_name
-- • total_profile_visits
-- • total_new_followers

SELECT 
    dd.month_name AS month_name,
    SUM(fa.profile_visits) AS total_profile_visits,
    SUM(fa.new_followers) AS total_new_followers
FROM fact_account fa
JOIN dim_dates dd ON fa.date = dd.date
GROUP BY dd.month_name
ORDER BY FIELD(dd.month_name, 'January', 'February', 'March', 'April', 'May', 'June', 
                                     'July', 'August', 'September', 'October', 'November', 'December');
