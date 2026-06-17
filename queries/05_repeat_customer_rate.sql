WITH customer_orders AS (
  SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS order_count
  FROM `olist-analytics-498118.raw.orders`
  GROUP BY customer_id
)

SELECT
  CASE WHEN order_count = 1 THEN 'One-time' ELSE 'Repeat' END AS customer_type,
  COUNT(*) AS customer_count,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_customers
FROM customer_orders
GROUP BY customer_type
