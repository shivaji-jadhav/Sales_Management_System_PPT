-- Monthly Revenue Trend

SELECT 
    DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
    SUM(s.quantity * p.price) AS revenue
FROM
    Sales s
        JOIN
    Products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;
