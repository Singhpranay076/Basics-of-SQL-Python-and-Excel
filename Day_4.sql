SELECT p.product_category, o.region, SUM(revenue) AS Total_revenue,
	CASE WHEN SUM(o.revenue) >= 2000 THEN 'High'
   			ELSE 'Low'
	END AS Order_type,
    ROUND(
    SUM(o.revenue) * 100.0 
    / SUM(SUM(o.revenue)) OVER (PARTITION BY o.region),
    2
         ) AS pct_contribution
FROM supply_chain.orders o
LEFT JOIN supply_chain.products p
ON o.product_id = p.product_id
GROUP BY p.product_category, o.region 
ORDER BY Total_revenue DESC;