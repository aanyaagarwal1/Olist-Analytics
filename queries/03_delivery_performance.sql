WITH seller_gmv AS (
  SELECT
    seller_id,
    SUM(price) AS total_gmv
  FROM `olist-analytics-498118.raw.order_items`
  GROUP BY seller_id
),

ranked AS (
  SELECT
    seller_id,
    total_gmv,
    RANK() OVER (ORDER BY total_gmv DESC) AS gmv_rank,
    SUM(total_gmv) OVER () AS overall_gmv
  FROM seller_gmv
)

SELECT
  COUNT(*) AS top_seller_count,
  ROUND(SUM(total_gmv), 0) AS gmv_from_top_sellers,
  ROUND(SUM(total_gmv) * 100.0 / MAX(overall_gmv), 1) AS pct_of_total_gmv
FROM ranked
WHERE gmv_rank <= 100
