-- 1. The Aggregated Sales Fact Table
CREATE TABLE fact_sales AS
SELECT 
    o.order_date,
    o.store_id,
    o.customer_id,
    oi.product_id,
    SUM(oi.quantity) AS total_units_sold,
    ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount))::numeric, 2) AS total_net_revenue
FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 4
GROUP BY o.order_date, o.store_id, o.customer_id, oi.product_id;

-- 2. The Flattened Product Lookup Table
CREATE TABLE dim_products AS
SELECT 
    p.product_id,
    p.product_name,
    c.category_name,
    b.brand_name,
    p.list_price
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id
LEFT JOIN brands b ON p.brand_id = b.brand_id;

-- 3. The Cleaned Customer Dimension
CREATE TABLE dim_customers AS
SELECT 
    customer_id,
    first_name || ' ' || last_name AS customer_full_name,
    city,
    state
FROM customers;

-- 4. The Store Dimension
CREATE TABLE dim_stores AS
SELECT 
    store_id,
    store_name,
    city,
    state
FROM stores;
