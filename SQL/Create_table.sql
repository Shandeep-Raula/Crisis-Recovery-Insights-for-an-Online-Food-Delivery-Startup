-- dim_customer
CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    signup_date DATE,
    city VARCHAR(100),
    acquisition_channel VARCHAR(100)
);

-- dim_delivery_partner
CREATE TABLE dim_delivery_partner (
    delivery_partner_id INT PRIMARY KEY,
    partner_name VARCHAR(150),
    city VARCHAR(100),
    vehicle_type VARCHAR(50),
    employment_type VARCHAR(50),
    avg_rating FLOAT,
    is_active TINYINT(1)
);

-- dim_menu_item
CREATE TABLE dim_menu_item (
    menu_item_id INT PRIMARY KEY,
    restaurant_id INT,
    item_name VARCHAR(150),
    category VARCHAR(80),
    is_veg TINYINT(1),
    price DECIMAL(10,2),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id)
);

-- dim_restaurant
CREATE TABLE dim_restaurant (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(150),
    city VARCHAR(100),
    cuisine_type VARCHAR(80),
    partner_type VARCHAR(50),
    avg_prep_time_min INT,
    is_active TINYINT(1)
);

-- fact_delivery_performance
CREATE TABLE fact_delivery_performance (
    order_id INT PRIMARY KEY,
    actual_delivery_time_mins INT,
    expected_delivery_time_mins INT,
    distance_km FLOAT
);

-- fact_order_items
CREATE TABLE fact_order_items (
    order_id INT,
    item_id INT PRIMARY KEY,
    menu_item_id INT,
    restaurant_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    item_discount DECIMAL(10,2),
    line_total DECIMAL(10,2),
    FOREIGN KEY (menu_item_id) REFERENCES dim_menu_item(menu_item_id),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id)
);

-- fact_orders
CREATE TABLE fact_orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    delivery_partner_id INT,
    order_timestamp DATETIME,
    subtotal_amount DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    delivery_fee DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    is_cod TINYINT(1),
    is_cancelled TINYINT(1),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id),
    FOREIGN KEY (delivery_partner_id) REFERENCES dim_delivery_partner(delivery_partner_id)
);

-- fact_ratings
CREATE TABLE fact_ratings (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    rating INT,
    review_text TEXT,
    review_timestamp DATETIME,
    sentiment_score FLOAT,
    FOREIGN KEY (order_id) REFERENCES fact_orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES dim_restaurant(restaurant_id)
);
