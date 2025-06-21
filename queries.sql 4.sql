-- Revenue by Country

SELECT 
    c.country, SUM(s.quantity * p.price) AS total_revenue
FROM
    Sales s
        JOIN
    Customers c ON s.customer_id = c.customer_id
        JOIN
    Products p ON s.product_id = p.product_id
GROUP BY c.country;
