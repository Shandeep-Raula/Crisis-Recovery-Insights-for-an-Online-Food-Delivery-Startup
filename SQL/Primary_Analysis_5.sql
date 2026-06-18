
USE SCHEMA QUICK_BITE.RAW;

WITH delivery_metrics AS (
    SELECT
        CASE 
            WHEN MONTH(o.order_timestamp) BETWEEN 1 AND 5 THEN 'PRE-CRISIS'
            WHEN MONTH(o.order_timestamp) BETWEEN 6 AND 9 THEN 'CRISIS'
            ELSE 'OTHER'
        END AS phase,
        COUNT(*) AS total_orders,
        AVG(d.actual_delivery_time_mins) AS avg_delivery_time_min,
        AVG(d.expected_delivery_time_mins) AS avg_expected_time_min,
        ROUND(
            100.0 * SUM(CASE WHEN d.actual_delivery_time_mins <= d.expected_delivery_time_mins THEN 1 ELSE 0 END)
            / NULLIF(COUNT(*), 0),
            2
        ) AS sla_compliance_pct
    FROM QUICK_BITE.RAW.FACT_DELIVERY_PERFORMANCE d
    JOIN QUICK_BITE.RAW.FACT_ORDERS o
      ON d.order_id = o.order_id
    WHERE o.is_cancelled = 'N'
      AND MONTH(o.order_timestamp) IN (1,2,3,4,5,6,7,8,9)
    GROUP BY 1
)
SELECT
    phase,
    total_orders,
    ROUND(avg_delivery_time_min,2)        AS avg_delivery_time_min,
    ROUND(avg_expected_time_min,2)        AS avg_expected_time_min,
    sla_compliance_pct
FROM delivery_metrics
ORDER BY phase;

