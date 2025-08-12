--- Dimension Table:dim_customer
CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city TEXT,
    country TEXT,
    demographic_info TEXT
);

--- Dimension Table:dim_product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    brand VARCHAR(100),
    price DECIMAL(10, 2)
);

--- Dimension Table:dim_time
CREATE TABLE dim_time (
    time_id INT PRIMARY KEY,
    date DATE,
    month INT,
    quarter INT,
    year INT
);

--- Fact Table:fact_sales
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    time_id INT,
    quantity_sold INT,
    total_sales DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (time_id) REFERENCES dim_time(time_id)
);