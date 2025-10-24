-- create & use DB and schema
CREATE OR REPLACE DATABASE QUICK_BITE;
CREATE OR REPLACE SCHEMA QUICK_BITE.RAW;
USE SCHEMA QUICK_BITE.RAW;

-- dim_customer
CREATE OR REPLACE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    signup_date DATE,
    city STRING,
    acquisition_channel STRING
);

-- dim_delivery_partner
CREATE OR REPLACE TABLE dim_delivery_partner (
    delivery_partner_id INT PRIMARY KEY,
    partner_name STRING,
    city STRING,
    vehicle_type STRING,
    employment_type STRING,
    avg_rating FLOAT,
    is_active BOOLEAN
);

-- dim_restaurant
CREATE OR REPLACE TABLE dim_restaurant (
    restaurant_id INT PRIMARY KEY,
    restaurant_name STRING,
    city STRING,
    cuisine_type STRING,
    partner_type STRING,
    avg_prep_time_min INT,
    is_active BOOLEAN
);

-- dim_menu_item
CREATE OR REPLACE TABLE dim_menu_item (
    menu_item_id INT PRIMARY KEY,
    restaurant_id INT,
    item_name STRING,
    category STRING,
    is_veg BOOLEAN,
    price NUMBER(10,2),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id)
);

-- fact_orders
CREATE OR REPLACE TABLE fact_orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    delivery_partner_id INT,
    order_timestamp TIMESTAMP_NTZ,
    subtotal_amount NUMBER(10,2),
    discount_amount NUMBER(10,2),
    delivery_fee NUMBER(10,2),
    total_amount NUMBER(10,2),
    is_cod BOOLEAN,
    is_cancelled BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id),
    FOREIGN KEY (delivery_partner_id) REFERENCES dim_delivery_partner(delivery_partner_id)
);

-- fact_delivery_performance
CREATE OR REPLACE TABLE fact_delivery_performance (
    order_id INT PRIMARY KEY,
    actual_delivery_time_mins INT,
    expected_delivery_time_mins INT,
    distance_km FLOAT,
    FOREIGN KEY (order_id) REFERENCES fact_orders(order_id)
);

-- fact_order_items
CREATE OR REPLACE TABLE fact_order_items (
    order_id INT,
    item_id INT PRIMARY KEY,
    menu_item_id INT,
    restaurant_id INT,
    quantity INT,
    unit_price NUMBER(10,2),
    item_discount NUMBER(10,2),
    line_total NUMBER(10,2),
    FOREIGN KEY (order_id) REFERENCES fact_orders(order_id),
    FOREIGN KEY (menu_item_id) REFERENCES dim_menu_item(menu_item_id),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id)
);

-- fact_ratings
CREATE OR REPLACE TABLE fact_ratings (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    rating INT,
    review_text STRING,
    review_timestamp TIMESTAMP_NTZ,
    sentiment_score FLOAT,
    FOREIGN KEY (order_id) REFERENCES fact_orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id)
);