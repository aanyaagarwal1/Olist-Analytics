WITH order_value AS (
  SELECT
    o.order_id,
    SUM(oi.price) AS order_total
  FROM `olist-analytics-498118.raw.orders` o
  JOIN `olist-analytics-498118.raw.order_items` oi
    ON o.order_id = oi.order_id
  GROUP BY o.order_id
)

SELECT
  CASE
    WHEN order_total < 50 THEN 'Under R$50'
    WHEN order_total < 150 THEN 'R$50-150'
    WHEN order_total < 500 THEN 'R$150-500'
    ELSE 'R$500+'
  END AS order_value_bucket,
  COUNT(*) AS order_count,
  ROUND(SUM(order_total), 0) AS total_gmv
FROM order_value
GROUP BY order_value_bucket
ORDER BY MIN(order_total)
