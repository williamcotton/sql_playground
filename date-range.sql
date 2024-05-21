WITH RECURSIVE DateRange AS (
    SELECT '2021-01-01'::date AS date
    UNION ALL
    SELECT (date + INTERVAL '1 month')::date AS start_date
    FROM DateRange
    WHERE date < '2021-07-01'::date
)
SELECT TO_CHAR(dr.date, 'YYYY-MM') AS year_month, COALESCE(value, 0) AS value
FROM DateRange dr
LEFT JOIN test_table dt ON TO_CHAR(dr.date, 'YYYY-MM') = TO_CHAR(dt.date, 'YYYY-MM')
ORDER BY year_month;
