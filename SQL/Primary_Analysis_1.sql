CREATE OR REPLACE VIEW vw_order_period_summary AS
SELECT 
    CASE 
        WHEN MONTH(order_timestamp) BETWEEN 1 AND 5 THEN 'PRE-CRISIS'
        WHEN MONTH(order_timestamp) BETWEEN 6 AND 9 THEN 'CRISIS'
    END AS Period_Group,
    TO_CHAR(order_timestamp, 'MON YYYY') AS Month_Name,
    MONTH(order_timestamp) AS month_num,
    COUNT(*) AS total_orders
FROM fact_orders
GROUP BY Period_Group, Month_Name, month_num;

SELECT * FROM vw_order_period_summary;

SELECT 
 SUM(CASE WHEN Period_Group = 'PRE-CRISIS' THEN total_orders END) AS PRE_CRISIS,
 SUM(CASE WHEN Period_Group = 'CRISIS' THEN total_orders END) AS CRISIS,
 ROUND((PRE_CRISIS - CRISIS) *100/ PRE_CRISIS,2) AS Order_decline
FROM vw_order_period_summary;
 
