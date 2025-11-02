WITH city_cancellations AS (
    SELECT
        R.city,
        SUM(CASE WHEN MONTH(F.order_timestamp) BETWEEN 1 AND 5 THEN 1 ELSE 0 END) AS total_pre_crisis_orders,
        SUM(CASE WHEN MONTH(F.order_timestamp) BETWEEN 1 AND 5 AND F.is_cancelled = TRUE THEN 1 ELSE 0 END) AS cancelled_pre_crisis,
        SUM(CASE WHEN MONTH(F.order_timestamp) BETWEEN 6 AND 9 THEN 1 ELSE 0 END) AS total_crisis_orders,
        SUM(CASE WHEN MONTH(F.order_timestamp) BETWEEN 6 AND 9 AND F.is_cancelled = TRUE THEN 1 ELSE 0 END) AS cancelled_crisis
    FROM QUICK_BITE.RAW.FACT_ORDERS AS F
    JOIN QUICK_BITE.RAW.DIM_RESTAURANT AS R 
        ON F.restaurant_id = R.restaurant_id
    GROUP BY R.city
),
city_rates AS (
    SELECT
        city,
        ROUND(100.0 * cancelled_pre_crisis / NULLIF(total_pre_crisis_orders, 0), 2) AS pre_crisis_cancel_rate,
        ROUND(100.0 * cancelled_crisis / NULLIF(total_crisis_orders, 0), 2) AS crisis_cancel_rate,
        ROUND(
            (100.0 * cancelled_crisis / NULLIF(total_crisis_orders, 0)) -
            (100.0 * cancelled_pre_crisis / NULLIF(total_pre_crisis_orders, 0)),
            2
        ) AS rate_change
    FROM city_cancellations
)
SELECT
    city,
    pre_crisis_cancel_rate,
    crisis_cancel_rate,
    rate_change
FROM city_rates
ORDER BY rate_change DESC
LIMIT 10;


