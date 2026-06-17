WITH order_payment_status AS (
  SELECT
    p.payment_type,
    p.payment_value,
    o.order_status,
    CASE WHEN o.order_status = 'canceled' THEN 1 ELSE 0 END AS is_canceled
  FROM `olist-analytics-498118.raw.payments` p
  JOIN `olist-analytics-498118.raw.orders` o
    ON p.order_id = o.order_id
)

SELECT
  payment_type,
  COUNT(*) AS total_orders,
  ROUND(AVG(payment_value), 2) AS avg_payment_value,
  ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate_pct
FROM order_payment_status
GROUP BY payment_type
ORDER BY total_orders DESC
