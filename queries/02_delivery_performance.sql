WITH order_delivery AS (
  SELECT
    o.order_id,
    c.customer_state,
    o.order_delivered_customer_date,
    o.order_estimated_delivery_date,
    CASE
      WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
      THEN 1 ELSE 0
    END AS is_late
  FROM `olist-analytics-498118.raw.orders` o
  JOIN `olist-analytics-498118.raw.customers` c
    ON o.customer_id = c.customer_id
  WHERE o.order_status = 'delivered'
)

SELECT
  customer_state,
  COUNT(*) AS total_orders,
  ROUND(AVG(is_late) * 100, 1) AS late_rate_pct
FROM order_delivery
GROUP BY customer_state
HAVING total_orders >= 30
ORDER BY late_rate_pct DESC
LIMIT 10
