WITH order_base AS (
    SELECT
        fo.order_id,
        fo.customer_id,
        fo.is_cancelled,
        fo.order_timestamp,
        dc.city,
        CASE
            WHEN fo.order_timestamp < '2025-06-01' THEN 'Pre-Crisis'
            ELSE 'Crisis'
        END AS period
    FROM fact_orders fo
    JOIN dim_customer dc
        ON fo.customer_id = dc.customer_id
),

cancellation_summary AS (
    SELECT
        period,
        city,
        COUNT(order_id) AS total_orders,
        SUM(CASE WHEN is_cancelled = TRUE THEN 1 ELSE 0 END) AS cancelled_orders
    FROM order_base
    GROUP BY period, city
)

SELECT
    period,
    city,
    total_orders,
    cancelled_orders,
    ROUND(
        cancelled_orders * 100.0 / NULLIF(total_orders, 0),
        2
    ) AS cancellation_rate_percent
FROM cancellation_summary
ORDER BY
    period,
    cancellation_rate_percent DESC;
