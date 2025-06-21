-- Top Customers by Spend

SELECT 
    c.name, SUM(s.quantity * p.price) AS total_spent
FROM
    Sales s
        JOIN
    Customers c ON s.customer_id = c.customer_id
        JOIN
    Products p ON s.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;
