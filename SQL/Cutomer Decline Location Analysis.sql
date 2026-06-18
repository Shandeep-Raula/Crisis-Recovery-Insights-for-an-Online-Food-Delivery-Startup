
WITH customer_decline AS (
    SELECT
        fo.customer_id,
        COUNT(CASE WHEN fo.order_timestamp < '2025-06-01' THEN fo.order_id END)
          - COUNT(CASE WHEN fo.order_timestamp >= '2025-06-01' THEN fo.order_id END) AS order_drop,
        AVG(CASE WHEN fr.review_timestamp < '2025-06-01' THEN fr.rating END)
          - AVG(CASE WHEN fr.review_timestamp >= '2025-06-01' THEN fr.rating END) AS rating_drop
    FROM fact_orders fo
    LEFT JOIN fact_ratings fr
        ON fo.order_id = fr.order_id
    WHERE fo.is_cancelled = 'N'
    GROUP BY fo.customer_id
),

declining_customers AS (
    SELECT customer_id
    FROM customer_decline
    QUALIFY ROW_NUMBER() OVER (
        ORDER BY order_drop DESC, rating_drop DESC
    ) <= 100
)

SELECT
    r.city,
    COUNT(DISTINCT dc.customer_id) AS declining_customers
FROM declining_customers dc
JOIN fact_orders o
    ON dc.customer_id = o.customer_id
JOIN dim_restaurant r
    ON o.restaurant_id = r.restaurant_id
GROUP BY r.city
ORDER BY declining_customers DESC;
