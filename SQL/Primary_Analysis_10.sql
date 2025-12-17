WITH pre_crisis_spend AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spend
    FROM fact_orders
    WHERE order_timestamp < '2025-06-01'
      AND is_cancelled = FALSE
    GROUP BY customer_id
),

top_5_customers AS (
    SELECT customer_id
    FROM (
        SELECT
            customer_id,
            NTILE(20) OVER (ORDER BY total_spend DESC) AS spend_bucket
        FROM pre_crisis_spend
    )
    WHERE spend_bucket = 1
),

customer_metrics AS (
    SELECT
        fo.customer_id,

        COUNT(CASE WHEN fo.order_timestamp < '2025-06-01' THEN fo.order_id END) AS pre_order_count,
        COUNT(CASE WHEN fo.order_timestamp >= '2025-06-01' THEN fo.order_id END) AS crisis_order_count,

        AVG(CASE WHEN fr.review_timestamp < '2025-06-01' THEN fr.rating END) AS pre_rating,
        AVG(CASE WHEN fr.review_timestamp >= '2025-06-01' THEN fr.rating END) AS crisis_rating,

        AVG(
            CASE 
                WHEN fo.order_timestamp >= '2025-06-01'
                THEN fdp.actual_delivery_time_mins - fdp.expected_delivery_time_mins
            END
        ) AS avg_delivery_delay
    FROM fact_orders fo
    JOIN top_5_customers t
        ON fo.customer_id = t.customer_id
    LEFT JOIN fact_ratings fr
        ON fo.order_id = fr.order_id
    LEFT JOIN fact_delivery_performance fdp
        ON fo.order_id = fdp.order_id
    WHERE fo.is_cancelled = FALSE
    GROUP BY fo.customer_id
),

preferred_cuisine AS (
    SELECT
        fo.customer_id,
        dr.cuisine_type,
        ROW_NUMBER() OVER (
            PARTITION BY fo.customer_id
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM fact_orders fo
    JOIN dim_restaurant dr
        ON fo.restaurant_id = dr.restaurant_id
    JOIN top_5_customers t
        ON fo.customer_id = t.customer_id
    WHERE fo.order_timestamp < '2025-06-01'
    GROUP BY fo.customer_id, dr.cuisine_type
)

SELECT
    dc.customer_id,
    dc.city,
    pc.cuisine_type AS preferred_cuisine,

    pre_order_count,
    crisis_order_count,
    (pre_order_count - crisis_order_count) AS order_frequency_drop,

    pre_rating,
    crisis_rating,
    (pre_rating - crisis_rating) AS rating_drop,

    avg_delivery_delay
FROM customer_metrics cm
JOIN dim_customer dc
    ON cm.customer_id = dc.customer_id
LEFT JOIN preferred_cuisine pc
    ON cm.customer_id = pc.customer_id
   AND pc.rn = 1
ORDER BY
    order_frequency_drop DESC,
    rating_drop DESC;
