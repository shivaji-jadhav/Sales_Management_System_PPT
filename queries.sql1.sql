-- Total Revenue by Product

SELECT 
    p.product_name, SUM(s.quantity * p.price) AS total_revenue
FROM
    Sales s
        JOIN
    Products p ON s.product_id = p.product_id
GROUP BY p.product_name;
