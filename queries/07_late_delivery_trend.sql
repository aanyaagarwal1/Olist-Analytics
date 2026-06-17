WITH monthly_delivery AS (
  SELECT
    FORMAT_DATE('%Y-%m', DATE(order_purchase_timestamp)) AS order_month,
    CASE
      WHEN order_delivered_customer_date > order_estimated_delivery_date
      THEN 1 ELSE 0
    END AS is_late
  FROM `olist-analytics-498118.raw.orders`
  WHERE order_status = 'delivered'
)

SELECT
  order_month,
  COUNT(*) AS total_orders,
  ROUND(AVG(is_late) * 100, 1) AS late_rate_pct
FROM monthly_delivery
GROUP BY order_month
ORDER BY order_month
