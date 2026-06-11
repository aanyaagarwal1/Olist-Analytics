-- Query 1: Order Status Overview
-- Business question: What % of orders are successfully delivered?

SELECT 
  order_status,
  COUNT(*) as total_orders,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) as percentage
FROM `olist-analytics-498118.raw.orders`
GROUP BY order_status
ORDER BY total_orders DESC

