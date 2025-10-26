CREATE OR REPLACE VIEW highest_percentage_decline_in_orders AS
SELECT 
    r.city AS City,
    CASE 
        WHEN MONTH(o.order_timestamp) BETWEEN 1 AND 5 THEN 'PRE-CRISIS'
        WHEN MONTH(o.order_timestamp) BETWEEN 6 AND 9 THEN 'CRISIS'
    END AS Period_Group,
    TO_CHAR(o.order_timestamp, 'MON YYYY') AS Month_Name,
    MONTH(o.order_timestamp) AS Month_Num,
    COUNT(*) AS Total_Orders
FROM fact_orders AS o
JOIN dim_restaurant AS r
    ON o.restaurant_id = r.restaurant_id
GROUP BY r.city, Period_Group, Month_Name, Month_Num;

SELECT * FROM highest_percentage_decline_in_orders;

SELECT 
    City,
    SUM(CASE WHEN Period_Group = 'PRE-CRISIS' THEN Total_Orders ELSE 0 END) AS PRE_CRISIS,
    SUM(CASE WHEN Period_Group = 'CRISIS' THEN Total_Orders ELSE 0 END) AS CRISIS,
    ROUND((PRE_CRISIS - CRISIS)*100/PRE_CRISIS, 2) AS decline_percentage
FROM highest_percentage_decline_in_orders
GROUP BY City
ORDER BY City;

