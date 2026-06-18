# Olist Marketplace Risk Analysis

A risk-focused analytics project built on 99K+ real Brazilian 
e-commerce orders from Olist. Designed to surface seller risk 
patterns, revenue concentration, and delivery performance — 
framed through a fintech/risk analytics lens.

---

## Key Findings

**Seller Risk**
- 16% of sellers fall into medium/high-risk tiers based on 
  late delivery patterns
- These sellers still process 8.3% of total GMV (R$1.03M+) — 
  real revenue flowing through unreliable sellers
- Top 100 sellers (6% of seller base) drive 55% of total GMV — 
  extreme revenue concentration risk

**Delivery Performance**
- Late delivery rates vary sharply by geography — AL (Alagoas) 
  shows 25%+ late rate vs single digits in better-performing states
- Logistics risk is concentrated, not evenly distributed — 
  targeted intervention is more effective than blanket policy

**Order & Payment Analysis**
- Platform is high-frequency, low-average-value: R$50-150 is 
  the largest order volume bucket
- Mid-to-high value orders (R$150-500) drive the majority of GMV 
  despite lower volume — highest exposure per failed delivery
- Cancellation rate is flat at 0.63% across all payment methods — 
  payment type is not a meaningful standalone fraud signal

---

## Dashboard

Built in Power BI Desktop connected to BigQuery.

**Page 1 — Seller Risk Overview**
![Seller Risk Overview](screenshots/seller_risk_overview.png)

**Page 2 — Delivery & Order Analysis**
![Delivery & Order Analysis](screenshots/delivery_order_analysis.png)

---

## Tools & Stack

| Layer | Tool |
|-------|------|
| Data Warehouse | Google BigQuery |
| Transformation | SQL (CTEs, window functions) |
| Visualisation | Power BI Desktop |
| Version Control | Git / GitHub |

---

## Project Structure
