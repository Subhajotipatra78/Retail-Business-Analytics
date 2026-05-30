-- 1. Brands Table
CREATE TABLE brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL
);

-- 2. Categories Table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- 3. Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT,
    category_id INT,
    model_year SMALLINT,
    list_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories (category_id) ON DELETE CASCADE
);

-- 4. Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone VARCHAR(25),
    email VARCHAR(255) NOT NULL,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(10),
    zip_code VARCHAR(5)
);

-- 5. Stores Table
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(255) NOT NULL,
    phone VARCHAR(25),
    email VARCHAR(255),
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(10),
    zip_code VARCHAR(5)
);

-- 6. Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_status INT NOT NULL,
    order_date DATE NOT NULL,
    required_date DATE NOT NULL,
    shipped_date DATE,
    store_id INT,
    staff_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE,
    FOREIGN KEY (store_id) REFERENCES stores (store_id) ON DELETE CASCADE
);

-- 7. Order Items Table
CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    product_id INT,
    quantity INT NOT NULL,
    list_price DECIMAL(10, 2) NOT NULL,
    discount DECIMAL(4, 2) NOT NULL,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES orders (order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE CASCADE
);
