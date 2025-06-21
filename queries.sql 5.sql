-- Most Sold Products

SELECT 
    p.product_name, SUM(s.quantity) AS total_units_sold
FROM
    Sales s
        JOIN
    Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC;
