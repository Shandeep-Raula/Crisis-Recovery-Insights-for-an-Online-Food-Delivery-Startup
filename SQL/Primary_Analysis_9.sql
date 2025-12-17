WITH loyal_customers AS (
    SELECT
        customer_id,
        COUNT(order_id) AS pre_crisis_orders
    FROM fact_orders
    WHERE order_timestamp < '2025-06-01'
      AND is_cancelled = FALSE
    GROUP BY customer_id
    HAVING COUNT(order_id) >= 5
),

crisis_orders AS (
    SELECT DISTINCT customer_id
    FROM fact_orders
    WHERE order_timestamp >= '2025-06-01'
      AND is_cancelled = FALSE
),

high_rated_loyal_customers AS (
    SELECT
        fr.customer_id,
        AVG(fr.rating) AS avg_rating
    FROM fact_ratings fr
    WHERE fr.review_timestamp < '2025-06-01'
    GROUP BY fr.customer_id
    HAVING AVG(fr.rating) > 4.5
)

SELECT
    COUNT(DISTINCT lc.customer_id) AS loyal_customers_pre_crisis,
    COUNT(DISTINCT CASE 
        WHEN co.customer_id IS NULL THEN lc.customer_id 
    END) AS stopped_ordering_during_crisis,
    COUNT(DISTINCT CASE 
        WHEN co.customer_id IS NULL
         AND hr.customer_id IS NOT NULL
        THEN lc.customer_id
    END) AS stopped_with_avg_rating_above_4_5
FROM loyal_customers lc
LEFT JOIN crisis_orders co
    ON lc.customer_id = co.customer_id
LEFT JOIN high_rated_loyal_customers hr
    ON lc.customer_id = hr.customer_id;
