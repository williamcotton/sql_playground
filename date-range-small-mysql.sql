WITH RECURSIVE DateRange AS (
    SELECT '2021-01-01' AS date
    UNION ALL
    SELECT DATE_ADD(date, INTERVAL 1 MONTH) AS date
    FROM DateRange
    WHERE date < '2021-07-01'
)
SELECT DATE_FORMAT(dr.date, '%Y-%m') AS `year_month`, COALESCE(value, 0) AS value
FROM DateRange dr
LEFT JOIN test_table tt ON DATE_FORMAT(dr.date, '%Y-%m') = DATE_FORMAT(tt.date, '%Y-%m')
ORDER BY `year_month`;