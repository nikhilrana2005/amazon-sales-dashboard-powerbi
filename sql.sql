SELECT
    product_name,
    SUM(total_sales) AS total_sales
FROM amazon_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;


SELECT
    product_category,
    SUM(total_sales) AS total_sales
FROM amazon_sales
GROUP BY product_category
ORDER BY total_sales DESC;


SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_sales) AS revenue
FROM amazon_sales
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY month;


SELECT
    region,
    SUM(total_sales) AS total_sales
FROM amazon_sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT
    region,
    SUM(profit_margin) AS total_profit
FROM amazon_sales
GROUP BY region
ORDER BY total_profit DESC;

SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM amazon_sales
GROUP BY payment_method
ORDER BY total_orders DESC;


SELECT
    order_status,
    COUNT(*) AS total_orders
FROM amazon_sales
GROUP BY order_status;


SELECT
    customer_name,
    SUM(total_sales) AS total_spent
FROM amazon_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

SELECT
    salesperson,
    SUM(total_sales) AS total_sales
FROM amazon_sales
GROUP BY salesperson
ORDER BY total_sales DESC;


