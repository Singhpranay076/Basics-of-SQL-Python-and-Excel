-- Simply calculating Total Revenue

SELECT SUM(revenue) AS Total_revenue

FROM supply_chain.day_1          -- These are not case sensitive but still a good practice to use CAPS.


-- Let's Try to divide in sum by category, then use GROUP BY, for example:

SELECT product_id ,SUM(Revenue) AS Total_revenue

FROM supply_chain.day_1     -- Drag and drop is better to avoid error;  in case you have created different schemas
GROUP BY product_id;

-- Let's try to add Condition here;  HAVING is only needed when filtering grouped totals, like:


SELECT product_id, SUM (revenue) AS Total_revenue

FROM supply_chain.day_1
GROUP BY product_id
HAVING SUM(revenue)> 3000 ;