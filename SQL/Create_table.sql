-- create & use DB and schema
CREATE OR REPLACE DATABASE QUICK_BITE;
CREATE OR REPLACE SCHEMA QUICK_BITE.RAW;
USE SCHEMA QUICK_BITE.RAW;

--------------------------------------------------
-- DIM_CUSTOMER
--------------------------------------------------
CREATE OR REPLACE TABLE DIM_CUSTOMER (
    CUSTOMER_ID STRING,
    SIGNUP_DATE DATE,
    ACQUISITION_CHANNEL STRING
);

--------------------------------------------------
-- DIM_DELIVERY_PARTNER
--------------------------------------------------
CREATE OR REPLACE TABLE DIM_DELIVERY_PARTNER (
    DELIVERY_PARTNER_ID STRING,
    PARTNER_NAME STRING,
    VEHICLE_TYPE STRING,
    EMPLOYMENT_TYPE STRING,
    AVG_RATING FLOAT,
    IS_ACTIVE STRING
);

--------------------------------------------------
-- DIM_RESTAURANT
--------------------------------------------------
CREATE OR REPLACE TABLE DIM_RESTAURANT (
    RESTAURANT_ID STRING,
    RESTAURANT_NAME STRING,
    CITY STRING,
    CUISINE_TYPE STRING,
    PARTNER_TYPE STRING,
    AVG_PREP_TIME_MIN STRING,
    IS_ACTIVE STRING
);

--------------------------------------------------
-- DIM_MENU_ITEM
--------------------------------------------------
CREATE OR REPLACE TABLE DIM_MENU_ITEM (
    MENU_ITEM_ID STRING,
    RESTAURANT_ID STRING,
    ITEM_NAME STRING,
    CATEGORY STRING,
    IS_VEG STRING,
    PRICE NUMBER(10,2)
);

--------------------------------------------------
-- FACT_ORDERS
--------------------------------------------------
CREATE OR REPLACE TABLE FACT_ORDERS (
    ORDER_ID STRING,
    CUSTOMER_ID STRING,
    RESTAURANT_ID STRING,
    DELIVERY_PARTNER_ID STRING,
    ORDER_TIMESTAMP TIMESTAMP,
    SUBTOTAL_AMOUNT NUMBER(10,2),
    DISCOUNT_AMOUNT NUMBER(10,2),
    DELIVERY_FEE NUMBER(10,2),
    TOTAL_AMOUNT NUMBER(10,2),
    IS_COD STRING,
    IS_CANCELLED STRING
);

--------------------------------------------------
-- FACT_ORDER_ITEMS
--------------------------------------------------
CREATE OR REPLACE TABLE FACT_ORDER_ITEMS (
    ORDER_ID STRING,
    ITEM_ID STRING,
    MENU_ITEM_ID STRING,
    RESTAURANT_ID STRING,
    QUANTITY INTEGER,
    UNIT_PRICE NUMBER(10,2),
    ITEM_DISCOUNT NUMBER(10,2),
    LINE_TOTAL NUMBER(10,2)
);

--------------------------------------------------
-- FACT_DELIVERY_PERFORMANCE
--------------------------------------------------
CREATE OR REPLACE TABLE FACT_DELIVERY_PERFORMANCE (
    ORDER_ID STRING,
    ACTUAL_DELIVERY_TIME_MINS INTEGER,
    EXPECTED_DELIVERY_TIME_MINS INTEGER,
    DISTANCE_KM NUMBER(10,2)
);

--------------------------------------------------
-- FACT_RATINGS
--------------------------------------------------
CREATE OR REPLACE TABLE FACT_RATINGS (
    ORDER_ID STRING,
    CUSTOMER_ID STRING,
    RESTAURANT_ID STRING,
    RATING NUMBER(3,1),
    REVIEW_TEXT STRING,
    REVIEW_TIMESTAMP TIMESTAMP,
    SENTIMENT_SCORE FLOAT
);