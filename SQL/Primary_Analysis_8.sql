USE SCHEMA QUICK_BITE.RAW;


WITH city_revenue AS (
    SELECT
        r.city,
        CASE 
            WHEN MONTH(o.order_timestamp) BETWEEN 1 AND 5 THEN 'PRE-CRISIS'
            WHEN MONTH(o.order_timestamp) BETWEEN 6 AND 9 THEN 'CRISIS'
        END AS phase,
        SUM(o.subtotal_amount - COALESCE(o.discount_amount, 0) + COALESCE(o.delivery_fee, 0)) AS total_revenue
    FROM QUICK_BITE.RAW.FACT_ORDERS o
    JOIN QUICK_BITE.RAW.DIM_RESTAURANT r
      ON o.restaurant_id = r.restaurant_id
    WHERE COALESCE(o.is_cancelled, FALSE) = FALSE
      AND MONTH(o.order_timestamp) BETWEEN 1 AND 9
    GROUP BY r.city, phase
),
pivoted AS (
    SELECT
        city,
        MAX(CASE WHEN phase = 'PRE-CRISIS' THEN total_revenue END) AS pre_crisis_rev,
        MAX(CASE WHEN phase = 'CRISIS' THEN total_revenue END) AS crisis_rev
    FROM city_revenue
    GROUP BY city
)
SELECT
    city,
    pre_crisis_rev,
    crisis_rev,
    ROUND((crisis_rev - pre_crisis_rev) / NULLIF(pre_crisis_rev, 0) * 100, 2) AS pct_revenue_change
FROM pivoted
ORDER BY pct_revenue_change ASC
LIMIT 10;

