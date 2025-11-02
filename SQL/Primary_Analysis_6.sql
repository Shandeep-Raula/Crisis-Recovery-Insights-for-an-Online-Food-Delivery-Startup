USE SCHEMA QUICK_BITE.RAW;

WITH monthly_ratings AS (
    SELECT
        YEAR(review_timestamp) AS review_year,
        MONTH(review_timestamp) AS review_month,
        TO_DATE(DATE_TRUNC('month', review_timestamp)) AS month_start,
        ROUND(AVG(rating), 2) AS avg_rating,
        COUNT(*) AS total_reviews
    FROM QUICK_BITE.RAW.FACT_RATINGS
    WHERE rating IS NOT NULL
    GROUP BY 1, 2, 3
),
month_diff AS (
    SELECT
        review_year,
        review_month,
        month_start,
        avg_rating,
        LAG(avg_rating) OVER (ORDER BY month_start) AS prev_month_rating,
        ROUND(avg_rating - LAG(avg_rating) OVER (ORDER BY month_start), 2) AS rating_change
    FROM monthly_ratings
)
SELECT
    TO_VARCHAR(month_start, 'YYYY-MM') AS month_label,
    avg_rating,
    prev_month_rating,
    rating_change
FROM month_diff
ORDER BY month_start;
