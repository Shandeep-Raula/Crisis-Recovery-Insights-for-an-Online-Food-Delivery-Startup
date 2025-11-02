SELECT * FROM dim_customer;

SELECT * FROM dim_delivery_partner;

SELECT * FROM dim_restaurant;

SELECT * FROM dim_menu_item;

SELECT * FROM fact_orders;

SELECT * FROM fact_delivery_performance;

SELECT * FROM fact_order_items;

SELECT * FROM fact_ratings;

SELECT COUNT(DISTINCT CUSTOMER_ID) FROM dim_customer;

TRUNCATE TABLE  dim_customer;
