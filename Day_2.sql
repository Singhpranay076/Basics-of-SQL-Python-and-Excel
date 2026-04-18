SELECT region,product_category, SUM(revenue) AS Total_reveneue

FROM supply_chain.orders AS a

LEFT JOIN supply_chain.products AS b

ON a.product_id = b.product_id

GROUP BY region, product_category

HAVING SUM(revenue)>5000

ORDER BY Total_reveneue DESC